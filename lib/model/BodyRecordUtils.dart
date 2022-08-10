import 'dart:collection';
import 'dart:convert';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:date_format/date_format.dart';

import '../ui/item/TimeSeriesLineAnnotationChart.dart';
import '../utils/db/DbHelper.dart';

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

  Future<List<charts.Series<TimeSeriesSales, DateTime>>> formData() async {
    var list = <TimeSeriesSales>[];
    var data = await user;
    if (data != null) {
      data.forEach((key, value) {
        list.add(TimeSeriesSales(DateTime.parse(key), value));
      });
    }
    return [
      charts.Series<TimeSeriesSales, DateTime>(
        id: 'body',
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: list,
      ),
    ];
  }
}
