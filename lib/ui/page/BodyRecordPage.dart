import 'package:date_format/date_format.dart';
import 'package:download_utils/base/_base_widget.dart';
import 'package:download_utils/ui/item/TimeSeriesLineAnnotationChart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../res/values/PColors.dart';

class BodyRecordPage extends BaseWidget {
  const BodyRecordPage({super.key});

  @override
  BaseWidgetState<BaseWidget> getState() {
    return _BodyRecordPageState();
  }
}

class _BodyRecordPageState extends BaseWidgetState<BodyRecordPage> {
  //文本框controller
  TextEditingController jkC = TextEditingController();

  //
  String date = formatDate(DateTime.now(), [yyyy, '-', mm, '-', dd]);

  @override
  Widget buildWidget(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                    child: TextField(
                  maxLines: 1,
                  keyboardType: TextInputType.phone,
                  controller: jkC,
                  decoration: const InputDecoration(
                      hintText: "温度",
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: PColors.hint_color),
                      filled: true,
                      fillColor: PColors.app_background),
                )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: OutlinedButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Dialog(
                                    child: Scaffold(
                                  body: SfDateRangePicker(
                                    view: DateRangePickerView.month,
                                    showTodayButton: true,
                                    showActionButtons: true,
                                    onSubmit: (Object? value) {
                                      setState(() {
                                        date = formatDate(DateTime.parse(value.toString()), [yyyy, '-', mm, '-', dd]);
                                      });
                                      Navigator.pop(context);
                                    },
                                    onCancel: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ));
                              });
                        },
                        child: Text(date))),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print(jkC.text);
                        }
                        // _queryInfo(jkC.text);
                      },
                      child: const Text("添加"))),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print(jkC.text);
                        }
                        // _queryInfo(jkC.text);
                      },
                      child: const Text("删除"))),
            ],
          ),
          Expanded(child: SelectionCallbackExample.withSampleData())
        ]));
  }

  @override
  String getWidgetName() {
    return "体温监控";
  }

  @override
  void onCreate() {}

  @override
  void onPause() {}

  @override
  void onResume() {}
}
