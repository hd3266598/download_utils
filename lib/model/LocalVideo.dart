import 'package:flutter/material.dart';

class LocalVideo extends ChangeNotifier {
  String? _title;
  String? _path;

  LocalVideo([
    String? message,
    String? session,
  ]) {
    _title = message;
    _path = session;
  }

  String? get title => _title;

  String? get path => _path;
}
