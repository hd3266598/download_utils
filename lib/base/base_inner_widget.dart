import 'package:flutter/material.dart';

import 'common_function.dart';

///通常是和 viewpager 联合使用  ， 类似于Android 中的 fragment
/// 不过生命周期 还需要在容器父类中根据tab切换来完善
abstract class BaseInnerWidget extends StatefulWidget {
  const BaseInnerWidget({Key? key}) : super(key: key);

  @override
  BaseInnerWidgetState createState() {
    return getState();
  }

  ///作为内部页面 ， 设置是第几个页面 ，也就是在list中的下标 ， 方便 生命周期的完善
  int setIndex();

  BaseInnerWidgetState getState();

  String getStateName() {
    return getState().getWidgetName();
  }
}

abstract class BaseInnerWidgetState<T extends BaseInnerWidget> extends State<T> with AutomaticKeepAliveClientMixin, BaseFuntion {
  bool isFirstLoad = true; //是否是第一次加载的标记位

  @override
  void initState() {
    initBaseCommon(this);
    setBackIconHide();
    onCreate();
    super.initState();
  }

  @override
  refresh(Function fun) {
    if (this.mounted) {
      this.setState(() {
        fun();
      });
    }
  }

  @override
  bool isAppBarShow() {
    return false;
  }

  @override
  bool isTopBarShow() {
    return false;
  }

  @override
  void didChangeDependencies() {
    bottomVsrtical = getVerticalMargin();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (isFirstLoad) {
      onResume();
      isFirstLoad = false;
    }

    return Scaffold(
      body: getBaseView(context),
    );
  }

  @override
  void dispose() {
    onDestroy();
    super.dispose();
  }

  ///返回作为内部页面，垂直方向 头和底部 被占用的 高度
  double getVerticalMargin();

  @override
  bool get wantKeepAlive => true;

  ///为了完善生命周期而特意搞得 方法 ， 手动调用 onPause 和onResume
  void changePageVisible(int index, int preIndex) {
    if (index != preIndex) {
      if (preIndex == widget.setIndex()) {
        onPause();
      } else if (index == widget.setIndex()) {
        onResume();
      }
    }
  }
}
