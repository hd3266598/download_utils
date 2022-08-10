import 'dart:collection';
import 'dart:convert';
import 'dart:math';

import '../utils/db/DbHelper.dart';
import 'Constants.dart';

class BodyRecordUtils {
  BodyRecordUtils._();

  static final BodyRecordUtils _instance = BodyRecordUtils._();

  static BodyRecordUtils getInstance() {
    return _instance;
  }

  init() async {
    var user = await BodyRecordUtils.getInstance().user;
    if (user == null) {
      saveUser(HashMap<String, double>());
    }
  }

  //================== user =======================

  final String _userKey = "user_key";

  HashMap<String, double>? _user;

  Future<HashMap<String, double>?> get user async {
    if (_user == null) {
      String? value = await DbHelper.getInstance().get(_userKey, null);
      if (value != null && value.isNotEmpty) {
        _user = json.decode(value);
      }
    }
    return _user;
  }

  saveUser(HashMap<String, double>? value) async {
    _user = value;
    await DbHelper.getInstance().add(_userKey, json.encode(value));
    if (bodyRecordNotifier.value == _user) {
      bodyRecordNotifier.notifyListeners();
    } else {
      bodyRecordNotifier.value = _user;
    }
  }

  add(String key, double value) {
    if (_user != null) {
      _user![key] = value;
      saveUser(_user);
    }
  }

  delete(String key) {
    if (_user != null) {
      _user?.remove(key);
      saveUser(_user);
    }
  }
}
