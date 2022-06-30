import 'package:flutter/material.dart';

//封装需要刷新的组件
class DownloadProgress extends StatefulWidget {
  final ValueNotifier<double> progress;

  const DownloadProgress({Key? key, required this.progress}) : super(key: key);

  @override
  createState() => DownloadProgressState();
}

class DownloadProgressState extends State<DownloadProgress> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 30,
        height: 30,
        child: ValueListenableBuilder<double>(
            valueListenable: widget.progress,
            builder: (context, value, child) {
              return Stack(
                children: [
                  CircularProgressIndicator(
                    value: value,
                  ),
                  Center(
                    child: Text((value * 100).toStringAsFixed(0)),
                  )
                ],
              );
            }));
  }
}
