import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../ui/item/DownloadProgress.dart';

class LocalVideo {
  String? _title;
  String? _path;
  String? _videoPath;
  String? _audioPath;
  Uint8List? bitmap;

  //视频下载id
  String? _videoId;

  //音频下载id
  String? _audioId;

  //视频下载进度
  ValueNotifier<double> videoProgress = ValueNotifier(0);

  //音频下载进度
  ValueNotifier<double> audioProgress = ValueNotifier(0);

  LocalVideo({String? title, String? path, String? videoId, String? audioId, String? videoPath, String? audioPath}) {
    _title = title;
    _path = path;
    _videoId = videoId;
    _audioId = audioId;
    _videoPath = videoPath;
    _audioPath = audioPath;
  }

  String? get title => _title;

  String? get path => _path;

  String? get videoPath => _videoPath;

  String? get audioPath => _audioPath;

  String? get videoId => _videoId;

  String? get audioId => _audioId;

  updateVideo(double progress) {
    videoProgress.value = progress;
  }

  updateAudio(double progress) {
    audioProgress.value = progress;
  }
}
