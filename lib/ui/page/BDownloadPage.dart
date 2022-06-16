import 'package:download_utils/base/_base_widget.dart';
import 'package:flutter/material.dart';

import '../../res/values/PColors.dart';

class BDownloadPage extends BaseWidget {
  const BDownloadPage({Key? key}) : super(key: key);

  @override
  BaseWidgetState<BaseWidget> getState() {
    return _BDownloadState();
  }
}

class _BDownloadState extends BaseWidgetState<BDownloadPage> {
  String? _url;

  @override
  Widget buildWidget(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: FutureBuilder<String?>(
        builder: (context, snapshot) {
          _url = snapshot.data;
          return Column(children: [
            TextField(
              maxLines: 1,
              keyboardType: TextInputType.phone,
              controller: TextEditingController(text: _url),
              decoration: const InputDecoration(
                  hintText: "输入视频地址",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: PColors.hint_color),
                  filled: true,
                  fillColor: PColors.app_background),
              onChanged: (value) {
                _url = value;
              },
            )
          ]);
        },
        future: clipboardContent,
      ),
    );
  }

  Future<String?> get clipboardContent async {
    return null;
  }

  @override
  void onCreate() {}

  @override
  void onPause() {}

  @override
  void onResume() {}

  @override
  String getWidgetName() {
    return "B站视频下载";
  }
}
