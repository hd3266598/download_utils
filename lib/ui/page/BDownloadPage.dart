import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:download_utils/base/_base_widget.dart';
import 'package:download_utils/model/VideoBean.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:html/parser.dart' show parse;

import '../../res/values/PColors.dart';

class BDownloadPage extends BaseWidget {
  const BDownloadPage({Key? key}) : super(key: key);

  @override
  BaseWidgetState<BaseWidget> getState() {
    return _BDownloadState();
  }
}

class _BDownloadState extends BaseWidgetState<BDownloadPage> {
  final Dio _dio = Dio();

  //FocusNode
  FocusNode jkNode = FocusNode();

  //文本框controller
  TextEditingController jkC = TextEditingController();

  @override
  Widget buildWidget(BuildContext context) {
    return Container(
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
                  hintText: "输入视频地址",
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
                  String url = "https://b23.tv/MxNCZF0";
                  _queryInfo(url);
                },
                child: const Text("解析"))
          ],
        )
      ]),
    );
  }

  _queryInfo(String url) async {
    Response data = await _dio.get(url);
    var realUri = data.requestOptions.uri;
    Response response = await _dio.getUri(realUri);
    var document = parse(response.data);
    var title = document.querySelector("title");
    var name = title?.text;
    var elements = document.querySelectorAll("script");
    for (var element in elements) {
      if (element.hasChildNodes()) {
        var tag = "window.__playinfo__=";
        var data = element.firstChild?.text;
        if (data != null && data.contains(tag) == true) {
          var info = data.substring(tag.length, data.length);
          var bean = VideoBean.fromJson(info);
          _download(name, realUri, bean.data);
        }
      }
    }
  }

  _download(String? name, Uri? realUri, Data? data) {

  }

  @override
  void onCreate() {
    //判断是否是安卓10以上设备
    _judgeTen();
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
        jkC.text = data.text ?? "";
      }
    }
  }

  //获取剪贴板内容：安卓10以下和以上两个方法
  _androidBelowTengetClipboardContent() async {
    ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
    if (data != null) {
      jkC.text = data.text ?? "";
    }
  }

  _androidAboveTengetClipboardContent() async {
    jkNode.addListener(() async {
      if (jkNode.hasFocus) {
        FocusScope.of(context).unfocus();
        ClipboardData? data = await Clipboard.getData(Clipboard.kTextPlain);
        if (data != null) {
          jkC.text = data.text ?? "";
        }
      }
    });
  }
}
