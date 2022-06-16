import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MessageDialog extends Dialog {
  String title;
  String message;
  String? negativeText;
  String? positiveText;
  void Function() onCloseEvent;
  void Function()? onPositivePressEvent;

  MessageDialog(
    this.title,
    this.message,
    this.onCloseEvent, {
    Key? key,
    this.negativeText,
    this.positiveText,
    this.onPositivePressEvent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Material(
        type: MaterialType.transparency,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: const ShapeDecoration(
                color: Color(0xffffffff),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      alignment: AlignmentDirectional.centerEnd,
                      children: <Widget>[
                        Center(
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontSize: 19.0,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: onCloseEvent,
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Icon(
                              Icons.close,
                              color: Color(0xffe0e0e0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xffe0e0e0),
                    height: 1.0,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                    constraints: const BoxConstraints(minHeight: 100.0),
                    child: Center(
                      child: Text(
                        message,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                  _buildBottomButtonGroup(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomButtonGroup() {
    var widgets = <Widget>[];
    if (negativeText != null && negativeText!.isNotEmpty) widgets.add(_buildBottomCancelButton());
    if (positiveText != null && positiveText!.isNotEmpty) widgets.add(_buildBottomPositiveButton());
    return Container(
      child: Flex(
        direction: Axis.horizontal,
        children: widgets,
      ),
    );
  }

  Widget _buildBottomCancelButton() {
    return Flexible(
      fit: FlexFit.tight,
      child: MaterialButton(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        onPressed: onCloseEvent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 11, 0, 11),
          child: Text(
            negativeText ?? "",
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomPositiveButton() {
    return Flexible(
      fit: FlexFit.tight,
      child: MaterialButton(
        onPressed: onPositivePressEvent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 11, 0, 11),
          child: Text(
            positiveText ?? "",
            style: TextStyle(
              color: Color(Colors.teal.value),
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
