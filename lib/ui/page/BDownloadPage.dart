import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:download_utils/base/_base_widget.dart';
import 'package:download_utils/model/VideoBean.dart';
import 'package:download_utils/ui/page/page.dart';
import 'package:download_utils/utils/common/DownloadFile.dart';
import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:html/parser.dart' show parse;
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path/path.dart' show basename;
import 'package:path_provider/path_provider.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
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

class _BDownloadState extends BaseWidgetState<BDownloadPage> with TickerProviderStateMixin {
  //FocusNode
  FocusNode jkNode = FocusNode();

  //文本框controller
  TextEditingController jkC = TextEditingController();

  //本地视频数据集合
  final List<LocalVideo> _list = [];

  //下载进度
  ValueNotifier<double> process = ValueNotifier(0);

  //下载的视频和音频
  ValueNotifier<String> title = ValueNotifier("");

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
                  _queryInfo(jkC.text);
                },
                child: const Text("解析"))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ValueListenableBuilder<double>(
                  valueListenable: process,
                  builder: (context, value, child) {
                    return LinearProgressIndicator(
                      value: value,
                    );
                  }),
            ),
            const SizedBox(
              width: 10,
            ),
            ValueListenableBuilder<String>(
                valueListenable: title,
                builder: (context, value, child) {
                  return Text(value);
                })
          ],
        ),
        Expanded(
            child: ListView.separated(
                padding: const EdgeInsets.only(top: 0),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  var value = _list[index];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FutureBuilder<Uint8List?>(
                        builder: (context, snapshot) {
                          if (snapshot.data != null) {
                            return Center(
                              child: SizedBox(
                                width: 150,
                                height: 150,
                                child: Image.memory(snapshot.data!),
                              ),
                            );
                          } else {
                            return const Text("加载失败");
                          }
                        },
                        future: _loadThumbnail(value.path ?? ""),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(value.title ?? ""),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              DecoratedBox(
                                decoration: const BoxDecoration(color: PColors.theme_green, borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                decoration: const BoxDecoration(color: PColors.theme_green, borderRadius: BorderRadius.all(Radius.circular(10))),
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
                                decoration: const BoxDecoration(color: PColors.theme_green, borderRadius: BorderRadius.all(Radius.circular(10))),
                                child: InkWell(
                                  onTap: () async {
                                    var file = File(value.path!);
                                    if (await file.exists()) {
                                      file.delete();
                                    }
                                    _refreshData();
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
                      ))
                    ],
                  );
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
    var realUri = data.redirects.first.location;
    Response response = await DownloadFile.getDio().getUri(realUri);
    var document = parse(response.data);
    var title = document.querySelector("title");
    var name = title?.text.trim() ?? "";
    name = name.replaceAll(RegExp("[`~!@#%^&*()+=|{}':;'\\[\\].<>/?~！@#￥%……&*（）——+|{}【】'；：”“’。、？]"), "");
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
    _downloadSingle(name, realUri, videoUrl, audioUrl);
  }

  _downloadSingle(String name, Uri realUri, String videoUrl, String audioUrl) async {
    var dir = await getTemporaryDirectory();
    var videoPath = "${dir.path}/$name-video.mp4";
    var audioPath = "${dir.path}/$name-audio.mp4";
    var path = "${dir.path}/$name.mp4";
    print("视频路径：$videoPath，音频路径：$audioPath，输出路径：$path");
    title.value = "视频";
    DownloadFile.download(
        baseUri: realUri,
        url: videoUrl,
        savePath: videoPath,
        onReceiveProgress: (count, total) {
          process.value = count / total;
        },
        done: () {
          print("视频下载完成");
          title.value = "音频";
          DownloadFile.download(
              baseUri: realUri,
              url: audioUrl,
              savePath: audioPath,
              onReceiveProgress: (count, total) {
                process.value = count / total;
              },
              done: () {
                print("音频下载完成");
                print("开始合成");
                title.value = "合成";
                var command = "-i $videoPath -i $audioPath  -c copy $path -y";
                FFmpegKit.execute(command).then((session) async {
                  final returnCode = await session.getReturnCode();
                  // final reason = await session.getFailStackTrace();
                  // print(returnCode);
                  // print(reason);
                  if (ReturnCode.isSuccess(returnCode)) {
                    print("合并成功");
                    title.value = "成功";
                    var video = File(videoPath);
                    if (await video.exists()) {
                      video.delete();
                    }
                    var audio = File(audioPath);
                    if (await audio.exists()) {
                      audio.delete();
                    }
                    _refreshData();
                  } else if (ReturnCode.isCancel(returnCode)) {
                    print("取消合并");
                  } else {
                    print("合并失败");
                    title.value = "失败";
                  }
                });
              });
        });
  }

  @override
  void onCreate() {
    //判断是否是安卓10以上设备
    _judgeTen();
    //刷新本地视频数据
    _refreshData();
  }

  @override
  void onPause() {}

  @override
  void onResume() {
    //获取粘贴板中的文本
    _judgePlatformInfo();
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
    _list.clear();
    var externalFilesDir = await getTemporaryDirectory();
    externalFilesDir.listSync().forEach((element) {
      var name = basename(element.path);
      if (name.contains(".mp4")) {
        _list.add(LocalVideo(name.substring(0, name.length - ".mp4".length), element.path));
      }
    });
    setState(() {});
  }

  // 保存视频
  _saveVideo(String path) async {
    final result = await ImageGallerySaver.saveFile(path);
    if (result['isSuccess']) {
      Toast.show("保存视频成功，保存路径为${result['filePath']}", duration: Toast.lengthShort, gravity: Toast.bottom);
    }
  }
}
