import 'dart:collection';
import 'dart:convert';

import '../utils/db/DbHelper.dart';


class BodyRecordUtils {
  BodyRecordUtils._();

  static final BodyRecordUtils _instance = BodyRecordUtils._();

  static BodyRecordUtils getInstance() {
    return _instance;
  }

  //================== user =======================

  final String _userKey = "user_key";

  HashMap<DateTime, double>? _user;

  Future<HashMap<DateTime, double>?> get user async {
    if (_user == null) {
      String? value = await DbHelper.getInstance().get(_userKey, null);
      if (value != null && value.isNotEmpty) {
        _user = json.decode(value);
      }
    }
    return _user;
  }

  saveUser(value) async {
    _user = value;
    await DbHelper.getInstance().add(_userKey, json.encode(value));
  }
}
