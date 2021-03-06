import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';

class DownloadFile {
  /// 用于记录正在下载的url，避免重复下载
  static var downloadingUrls = <String, CancelToken>{};

  static Dio? _dio;

  static Dio getDio() {
    if (_dio == null) {
      _dio = Dio();
      // _dio?.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    }
    return _dio!;
  }

  /// 断点下载大文件
  static Future<void> download({
    required Uri baseUri,
    required String url,
    required String savePath,
    ProgressCallback? onReceiveProgress,
    void Function()? done,
    void Function(DioError)? failed,
  }) async {
    int downloadStart = 0;
    bool fileExists = false;
    File f = File(savePath);
    if (await f.exists()) {
      downloadStart = f.lengthSync();
      fileExists = true;
    }
    print("开始：$downloadStart");
    if (fileExists && downloadingUrls.containsKey(url)) {
      return;
    }
    try {
      //开始下载
      CancelToken cancelToken = CancelToken();
      downloadingUrls[url] = cancelToken;
      var response = await getDio().get<ResponseBody>(
        url,
        options: Options(
          /// 以流的方式接收响应数据
          responseType: ResponseType.stream,
          followRedirects: false,
          headers: {
            /// 分段下载重点位置
            "Referer": baseUri,
            "range": "bytes=$downloadStart-",
          },
        ),
      );
      File file = File(savePath);
      RandomAccessFile raf = file.openSync(mode: FileMode.append);
      int received = downloadStart;
      int total = await _getContentLength(response);
      Stream<Uint8List> stream = response.data!.stream;
      StreamSubscription<Uint8List>? subscription;
      subscription = stream.listen(
        (data) {
          /// 写入文件必须同步
          raf.writeFromSync(data);
          received += data.length;
          onReceiveProgress?.call(received, total);
        },
        onDone: () async {
          downloadingUrls.remove(url);
          await raf.close();
          done?.call();
        },
        onError: (e) async {
          await raf.close();
          downloadingUrls.remove(url);
          failed?.call(e as DioError);
        },
        cancelOnError: true,
      );
      cancelToken.whenCancel.then((_) async {
        await subscription?.cancel();
        await raf.close();
      });
    } on DioError catch (error) {
      /// 请求已发出，服务器用状态代码响应它不在200的范围内
      if (CancelToken.isCancel(error)) {
      } else {
        failed?.call(error);
      }
      downloadingUrls.remove(url);
    }
  }

  //检查本地安装文件
  static Future<bool> checkLocalFile({
    required String url,
    required String savePath,
  }) async {
    File f = File(savePath);
    if (await f.exists()) {
      try {
        var downloadStart = f.lengthSync();
        var dio = Dio();
        //确认本地文件是否完整
        var heads = await dio.head(url);
        if (downloadStart == int.parse(heads.headers.value(Headers.contentLengthHeader) ?? "0")) {
          return true;
        } else {
          return false;
        }
      } catch (e) {
        return false;
      }
    } else {
      return false;
    }
  }

  /// 获取下载的文件大小
  static Future<int> _getContentLength(Response<ResponseBody> response) async {
    try {
      var headerContent = response.headers.value(HttpHeaders.contentRangeHeader);
      print("下载文件$headerContent");
      if (headerContent != null) {
        return int.parse(headerContent.split('/').last);
      } else {
        return 0;
      }
    } catch (e) {
      return 0;
    }
  }

  /// 取消任务
  static void cancelDownload(String url) {
    downloadingUrls[url]?.cancel();
    downloadingUrls.remove(url);
  }
}
