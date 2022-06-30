import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';
import 'dart:ui';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:download_utils/base/_base_widget.dart';
import 'package:download_utils/model/VideoBean.dart';
import 'package:download_utils/ui/item/DownloadProgress.dart';
import 'package:download_utils/ui/page/page.dart';
import 'package:download_utils/utils/common/DownloadFile.dart';
import 'package:download_utils/utils/common/imgPrefix.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:html/parser.dart' show parse;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path/path.dart' show basename;
import 'package:path_provider/path_provider.dart';
import 'package:toast/toast.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../model/LocalVideo.dart';
import '../../res/values/PColors.dart';

class BDownloadPage extends BaseWidget {
  const BDownloadPage({Key? key}) : super(key: key);

  @override
  BaseWidgetState<BaseWidget> getState() {
    return _BDownloadState();
  }
}

class _BDownloadState extends BaseWidgetState<BDownloadPage> {
  //FocusNode
  FocusNode jkNode = FocusNode();

  //文本框controller
  TextEditingController jkC = TextEditingController();

  //本地视频数据集合
  final List<LocalVideo?> _list = [];

  @override
  Widget buildWidget(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(children: [
        Row(
          children: [
            Expanded(
                child: TextField(
              maxLines: 1,
              keyboardType: TextInputType.phone,
              controller: jkC,
              decoration: const InputDecoration(
                  hintText: "输入视频地址：",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: PColors.hint_color),
                  filled: true,
                  fillColor: PColors.app_background),
            )),
            TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print(jkC.text);
                  }
                  // String url = "https://b23.tv/MxNCZF0";
                  _queryInfo("https://b23.tv/MxNCZF0");
                },
                child: const Text("解析"))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.only(top: 0),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  var value = _list[index];
                  if (value != null) {
                    return SizedBox(
                        height: 100,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Center(
                              child: SizedBox(
                                width: 100,
                                height: 100,
                                child: Image.memory(value.bitmap!),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(value.title ?? ""),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    DecoratedBox(
                                      decoration:
                                          const BoxDecoration(color: PColors.theme_green, borderRadius: BorderRadius.all(Radius.circular(10))),
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => VideoPage(
                                                  path: value.path ?? "",
                                                ),
                                              ));
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 25,
                                          alignment: Alignment.center,
                                          child: const Text("播放", style: TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    DecoratedBox(
                                      decoration:
                                          const BoxDecoration(color: PColors.theme_green, borderRadius: BorderRadius.all(Radius.circular(10))),
                                      child: InkWell(
                                        onTap: () async {
                                          _saveVideo(value.path!);
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 25,
                                          alignment: Alignment.center,
                                          child: const Text("同步", style: TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    DecoratedBox(
                                      decoration:
                                          const BoxDecoration(color: PColors.theme_green, borderRadius: BorderRadius.all(Radius.circular(10))),
                                      child: InkWell(
                                        onTap: () async {
                                          var file = File(value.path!);
                                          if (await file.exists()) {
                                            file.delete();
                                          }
                                          setState(() {
                                            _list.remove(value);
                                          });
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 25,
                                          alignment: Alignment.center,
                                          child: const Text("删除", style: TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [DownloadProgress(progress: value.videoProgress), DownloadProgress(progress: value.audioProgress)],
                            ),
                          ],
                        ));
                  } else {
                    return const Text("暂无数据");
                  }
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 1,
                  );
                },
                itemCount: _list.length))
      ]),
    );
  }

  Future<Uint8List?> _loadThumbnail(String path) async {
    return await VideoThumbnail.thumbnailData(
      video: path,
      imageFormat: ImageFormat.JPEG,
      maxWidth: 150,
      // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      maxHeight: 150,
      quality: 100,
    );
  }

  _queryInfo(String url) async {
    Response data = await DownloadFile.getDio().get(url);
    var realUri = Uri.parse(url);
    if (data.isRedirect == true) {
      realUri = data.redirects.first.location;
    }
    Response response = await DownloadFile.getDio().getUri(realUri);
    var document = parse(response.data);
    var title = document.querySelector("title");
    var name = title?.text.replaceAll(" ", "");
    name = name?.replaceAll(RegExp("[`~!@#%^&*()+=|{}':;'\\[\\].<>/?~！@#￥%……&*（）——+|{}【】'；：”“’。、？]"), "") ?? "";
    var elements = document.querySelectorAll("script");
    for (var element in elements) {
      if (element.hasChildNodes()) {
        var tag = "window.__playinfo__=";
        var data = element.firstChild?.text;
        if (data != null && data.contains(tag) == true) {
          var info = data.substring(tag.length, data.length);
          var bean = VideoBean.fromJson(jsonDecode(info));
          if (bean.data != null) {
            _download(name, realUri, bean.data!);
          }
        }
      }
    }
  }

  _download(String name, Uri realUri, Data data, [int accQuality = 0]) {
    var quality = data.acceptDescription![accQuality];
    var duration = data.dash?.duration ?? 0;
    var videoUrl = data.dash?.video![accQuality].baseUrl ?? "";
    var audioUrl = data.dash?.audio![accQuality].baseUrl ?? "";
    print("当前视频清晰度为{$quality}，时长{${duration / 60}}分{${duration % 60}}秒");
    _downloadSingle(name, realUri.toString(), videoUrl, audioUrl);
  }

  _downloadSingle(String name, String realUri, String videoUrl, String audioUrl) async {
    var header = {
      /// 分段下载重点位置
      "Referer": realUri,
      // "range": "bytes=0-",
    };
    var dir = await _getDir();
    if (dir != null) {
      var videoPath = "${dir.path}/$name-video.mp4";
      var audioPath = "${dir.path}/$name-audio.mp4";
      var path = "${dir.path}/$name.mp4";
      print("视频路径：$videoPath，音频路径：$audioPath，输出路径：$path");
      var videoId = await FlutterDownloader.enqueue(
        url: videoUrl,
        fileName: "$name-video.mp4",
        savedDir: dir.path,
        headers: header,
      );
      var audioId = await FlutterDownloader.enqueue(
        url: audioUrl,
        fileName: "$name-audio.mp4",
        savedDir: dir.path,
        headers: header,
      );
      var localVideo = LocalVideo(title: name, path: path, videoPath: videoPath, audioPath: audioPath, videoId: videoId, audioId: audioId);
      localVideo.bitmap = (await rootBundle.load("place.png".path)).buffer.asUint8List();
      setState(() {
        _list.add(localVideo);
      });
    }

    // title.value = "解析视频";
    // DownloadFile.download(
    //     baseUri: realUri,
    //     url: videoUrl,
    //     savePath: videoPath,
    //     onReceiveProgress: (count, total) {
    //       process.value = count / total;
    //     },
    //     done: () {
    //       print("视频下载完成");
    //       title.value = "解析音频";
    //       DownloadFile.download(
    //           baseUri: realUri,
    //           url: audioUrl,
    //           savePath: audioPath,
    //           onReceiveProgress: (count, total) {
    //             process.value = count / total;
    //           },
    //           done: () {
    //             print("音频下载完成");
    //             print("开始合成");
    //             title.value = "音视频合成";
    //           });
    //     });
  }

  Future<void> merge(LocalVideo localVideo) async {
    var command = "-i ${localVideo.videoPath} -i ${localVideo.audioPath}  -c copy ${localVideo.path} -y";
    FFmpegKit.execute(command).then((session) async {
      final returnCode = await session.getReturnCode();
      // final reason = await session.getFailStackTrace();
      // print(returnCode);
      // print(reason);
      if (ReturnCode.isSuccess(returnCode)) {
        print("合并成功");
        var video = File(localVideo.videoPath!);
        if (await video.exists()) {
          await video.delete();
        }
        var audio = File(localVideo.audioPath!);
        if (await audio.exists()) {
          await audio.delete();
        }
        var bitmap = await _loadThumbnail(localVideo.path!);
        setState(() {
          localVideo.bitmap = bitmap;
        });
      } else if (ReturnCode.isCancel(returnCode)) {
        print("取消合并");
      } else {
        print("合并失败");
      }
    });
  }

  Future<Directory?> _getDir() async {
    if (Platform.isAndroid) {
      return await getExternalStorageDirectory();
    } else {
      return await getApplicationDocumentsDirectory();
    }
  }

  @override
  void onCreate() {
    //判断是否是安卓10以上设备
    _judgeTen();
    //刷新本地视频数据
    _refreshData();
    //注册线程间通信端口
    _initIsolatePort();
  }

  @override
  void onPause() {}

  @override
  void onResume() {
    //获取粘贴板中的文本
    _judgePlatformInfo();
  }

  void _initIsolatePort() {
    var port = ReceivePort();
    IsolateNameServer.registerPortWithName(port.sendPort, 'downloader_send_port');
    port.listen((dynamic data) async {
      String id = data[0];
      DownloadTaskStatus status = data[1];
      int progress = data[2];
      //更新进度
      var video = _list.firstWhere((element) => element?.videoId == id, orElse: () {
        return null;
      });
      var audio = _list.firstWhere((element) => element?.audioId == id, orElse: () {
        return null;
      });
      video?.updateVideo(progress / 100);
      audio?.updateAudio(progress / 100);

      //开始合并
      if (status == DownloadTaskStatus.complete) {
        // final tasks = await FlutterDownloader.loadTasksWithRawQuery(query: "SELECT * FROM task WHERE status=3");
        var bean = _list.firstWhere((element) => element?.videoId == id || element?.audioId == id, orElse: () {
          return null;
        });
        if (bean != null) {
          if (bean.videoProgress.value == 1 && bean.audioProgress.value == 1) {
            merge(bean);
          }
        }
      }
    });
    FlutterDownloader.registerCallback(downloadCallback);
  }

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.dispose();
  }

  @pragma('vm:entry-point')
  static void downloadCallback(String id, DownloadTaskStatus status, int progress) {
    final SendPort? send = IsolateNameServer.lookupPortByName('downloader_send_port');
    send?.send([id, status, progress]);
  }

  @override
  String getWidgetName() {
    return "B站视频下载";
  }

  //判断是否是安卓10以上设备
  _judgeTen() async {
    //获取设备信息
    DeviceInfoPlugin dip = DeviceInfoPlugin();
    AndroidDeviceInfo adi = await dip.androidInfo;
    //经亲测发现安卓10以下取到的版本号是xxx.0，安卓10以上直接取到10或者11
    String? version = "";
    if (adi.version.release?.contains(".") == true) {
      //判断版本号中是否有.，有的话用.分割一下取得那个整数（返回的是字符串类型）
      var haha = adi.version.release?.split(".");
      version = haha?.first;
    } else {
      version = adi.version.release;
    }
    //如果版本号大于等于10，则监听FocusNode
    if (version != null) {
      if (int.parse(version) >= 10) {
        _androidAboveTengetClipboardContent();
      }
    }
  }

  //判断平台信息
  _judgePlatformInfo() async {
    if (Platform.isAndroid) {
      DeviceInfoPlugin dip = DeviceInfoPlugin();
      AndroidDeviceInfo adi = await dip.androidInfo;
      String? version = "";
      if (adi.version.release?.contains(".") == true) {
        var haha = adi.version.release?.split(".");
        version = haha?.first;
      } else {
        version = adi.version.release;
      }
      if (version != null) {
        if (int.parse(version) < 10) {
          _androidBelowTengetClipboardContent();
        } else {
          if (!mounted) return;
          FocusScope.of(context).requestFocus(jkNode);
        }
      }
    } else if (Platform.isIOS) {
      ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
      if (data != null) {
        _getInfoByClip(data.text ?? "");
      }
    }
  }

  //获取剪贴板内容：安卓10以下和以上两个方法
  _androidBelowTengetClipboardContent() async {
    ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
    if (data != null) {
      _getInfoByClip(data.text ?? "");
    }
  }

  _androidAboveTengetClipboardContent() async {
    jkNode.addListener(() async {
      if (jkNode.hasFocus) {
        FocusScope.of(context).unfocus();
        ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
        if (data != null) {
          _getInfoByClip(data.text ?? "");
        }
      }
    });
  }

  _getInfoByClip(String input) {
    jkC.text = RegExp("https?://(?:[-\\w.]|%[\\da-fA-F]{2})+[^\\u4e00-\\u9fa5]+[\\w-_/?&=#%:]{0}").stringMatch(input) ?? "";
  }

  _refreshData() async {
    var externalFilesDir = await _getDir();
    if (externalFilesDir != null) {
      for (var element in externalFilesDir.listSync()) {
        var name = basename(element.path);
        if (name.contains(".mp4")) {
          var title = name.substring(0, name.length - ".mp4".length);
          if (!_list.any((element) => element?.title == title)) {
            var localVideo = LocalVideo(title: title, path: element.path);
            var bitmap = await _loadThumbnail(element.path);
            localVideo.bitmap = bitmap;
            _list.add(localVideo);
          }
        }
      }
      setState(() {});
    }
  }

  // 保存视频
  _saveVideo(String path) async {
    final result = await ImageGallerySaver.saveFile(path);
    if (result['isSuccess']) {
      Toast.show("保存视频成功，保存路径为${result['filePath']}", duration: Toast.lengthShort, gravity: Toast.bottom);
    }
  }
}
