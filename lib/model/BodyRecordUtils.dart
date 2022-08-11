import 'dart:collection';
import 'dart:convert';
import 'package:charts_flutter/flutter.dart';

import '../ui/item/TimeSeriesLineAnnotationChart.dart';
import '../utils/db/DbHelper.dart';

class BodyRecordUtils {
  BodyRecordUtils._();

  static final BodyRecordUtils _instance = BodyRecordUtils._();

  static BodyRecordUtils getInstance() {
    return _instance;
  }

  init(Function(LinkedHashMap<String, double>?) func) async {
    if (await BodyRecordUtils.getInstance().user == null) {
      saveUser(LinkedHashMap<String, double>());
    }
    func.call(_user);
  }

  //================== user =======================

  final String _userKey = "user_key";

  LinkedHashMap<String, double>? _user;

  Future<LinkedHashMap<String, double>?> get user async {
    if (_user == null) {
      String? value = await DbHelper.getInstance().get(_userKey, null);
      if (value != null && value.isNotEmpty) {
        _user = LinkedHashMap<String, double>.from(json.decode(value));
      }
    }
    return _user;
  }

  saveUser(LinkedHashMap<String, double>? value) async {
    _user = value;
    await DbHelper.getInstance().add(_userKey, json.encode(value));
  }

  Future<List<Series<TimeSeriesSales, DateTime>>> formData() async {
    var list = <TimeSeriesSales>[];
    var data = await user;
    if (data != null) {
      data.forEach((key, value) {
        list.add(TimeSeriesSales(DateTime.parse(key), value));
      });
    }
    return [
      Series<TimeSeriesSales, DateTime>(
        id: '体温',
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: list,
      ),
      Series<TimeSeriesSales, DateTime>(
        id: '体温',
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: list,
      )..setAttribute(rendererIdKey, 'customPoint'),
    ];
  }
}
