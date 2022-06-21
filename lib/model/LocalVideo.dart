import 'dart:typed_data';

import 'package:flutter/material.dart';

class LocalVideo extends ChangeNotifier {
  String? _title;
  String? _path;
  Uint8List? _bitmap;

  LocalVideo([
    String? message,
    String? session,
    Uint8List? bitmap
  ]) {
    _title = message;
    _path = session;
    _bitmap = bitmap;
  }

  String? get title => _title;

  String? get path => _path;

  Uint8List? get bitmap => _bitmap;
}
