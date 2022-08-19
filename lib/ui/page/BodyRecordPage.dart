import 'dart:collection';
import 'dart:io';

import 'package:date_format/date_format.dart';
import 'package:download_utils/base/_base_widget.dart';
import 'package:download_utils/utils/common/FileUtils.dart';
import 'package:download_utils/utils/toast/toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../model/BodyRecordUtils.dart';
import '../../res/values/PColors.dart';
import '../item/TimeSeriesLineAnnotationChart.dart';

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

  //日期
  DateTime date = DateTime.now();

  //数据
  LinkedHashMap<String, double>? beans;

  @override
  Widget buildWidget(BuildContext context) {
    return Container(
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
                  keyboardType: TextInputType.number,
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
                          showDatePick(context, (value) {
                            setState(() {
                              date = value;
                            });
                          });
                        },
                        child: Text(formatDate(date, [yyyy, '-', mm, '-', dd])))),
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
                          print(date.toString());
                        }
                        if (beans != null) {
                          setState(() {
                            beans![date.toString()] = double.tryParse(jkC.text) ?? 0.0;
                            BodyRecordUtils.getInstance().saveUser(beans);
                          });
                        }
                      },
                      child: const Text("添加"))),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return SelectionCallbackExample.withSampleData();
                        }));
                      },
                      child: const Text("折线图"))),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        var buff = StringBuffer("日期,温度\n");
                        if (beans?.entries != null) {
                          for (var element in beans!.entries) {
                            buff.write("${formatDate(DateTime.parse(element.key), [yyyy, '-', mm, '-', dd])},${element.value}\n");
                          }
                          FileUtils.getInstance().writeToFile("小刘体温.txt", buff.toString());
                          ToastUtils.showToastCenter("导出成功");
                        }
                      },
                      child: const Text("导出"))),
            ],
          ),
          Expanded(
              child: ListView.separated(
            padding: const EdgeInsets.only(top: 0),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              var data = beans?.entries.elementAt((beans?.length ?? 1) - 1 - index);
              return DecoratedBox(
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "日期：${data?.key}",
                        style: const TextStyle(color: PColors.second_text_color),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("体温：${data?.value}"),
                      const SizedBox(
                        width: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DecoratedBox(
                            decoration: const BoxDecoration(color: PColors.btn_bcg, borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: const Text("是否删除该项记录？"),
                                        actions: [
                                          TextButton(child: const Text("取消"), onPressed: () => Navigator.pop(context)),
                                          TextButton(
                                              child: const Text("确定"),
                                              onPressed: () {
                                                setState(() {
                                                  beans?.remove(data?.key);
                                                  BodyRecordUtils.getInstance().saveUser(beans);
                                                });
                                                Navigator.pop(context);
                                              }),
                                        ],
                                      );
                                    });
                              },
                              child: Container(
                                width: 50,
                                height: 25,
                                alignment: Alignment.center,
                                child: const Text(
                                  "删除",
                                  style: TextStyle(color: PColors.text_red),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 1,
              );
            },
            itemCount: beans?.length ?? 0,
          ))
        ]));
  }

  void showDatePick(BuildContext context, Function(DateTime) func) {
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
                Navigator.pop(context);
                func.call(DateTime.parse(value.toString()));
              },
            ),
          ));
        });
  }

  @override
  String getWidgetName() {
    return "体温监控";
  }

  @override
  void onCreate() {
    BodyRecordUtils.getInstance().init((value) {
      setState(() {
        beans = value;
        jkC.text = beans?.entries.last.value.toString() ?? "";
      });
    });
  }

  @override
  void onPause() {}

  @override
  void onResume() {}
}
