import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '../base/LoadingView.dart';
import '../ui/dialog/message_dialog.dart';
import '../utils/common/imgPrefix.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../res/values/PColors.dart';
import '../utils/toast/toast.dart';

/// base 类 常用的一些工具类 ， 放在这里就可以了
abstract class BaseFuntion implements LoadingView {
  late BuildContext _contextBaseFunction;

  bool isTopBarShow(); //状态栏是否显示
  //导航栏是否显示
  bool isAppBarShow();

  bool _isErrorWidgetShow = false; //错误信息是否显示

  //标题字体大小
  double _appBarCenterTextSize = 20; //根据需求变更
  String _appBarTitle = "";

  //小标题信息
  String _appBarRightTitle = "设置";
  double _appBarRightTextSize = 15.0;

  String _errorContentMesage = "网络错误啦~~~";

  String _errImgPath = "images/load_error_view.png";

  bool _isLoadingWidgetShow = false;

  bool _isEmptyWidgetVisible = false;

  String _emptyWidgetContent = "暂无数据";

  String _emptyImgPath = "ic_action_empty.png".path; //自己根据需求变更
  bool _isBackIconShow = false;

  bool _isRightIconShow = true;

  final FontWeight _fontWidget = FontWeight.w600; //错误页面和空页面的字体粗度

  double bottomVsrtical = 0; //作为内部页面距离底部的高度

  Color _backgroundColor = PColors.windowBackground;

  void initBaseCommon(State state) {
    _contextBaseFunction = state.context;
    _appBarTitle = getWidgetName();
  }

  refresh(Function fun);

  Widget getBaseView(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Offstage(offstage: !isTopBarShow(), child: _getBaseTopBar()),
          Offstage(offstage: !isAppBarShow(), child: _getBaseAppBar()),
          Container(
            width: getScreenWidth(),
            height: getMainWidgetHeight(),
            color: _backgroundColor, //背景颜色，可自己变更
            child: Stack(
              children: <Widget>[
                _buildProviderWidget(context),
                _isErrorWidgetShow ? _getBaseErrorWidget() : _getHolderLWidget(),
                _isEmptyWidgetVisible ? _getBaseEmptyWidget() : _getHolderLWidget(),
                _isLoadingWidgetShow ? _getBassLoadingWidget() : _getHolderLWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _getHolderLWidget() {
    return const SizedBox(
      width: 0,
      height: 0,
    );
  }

  Widget _getBaseTopBar() {
    return getTopBar();
  }

  Widget _getBaseAppBar() {
    return getAppBar();
  }

  ///设置状态栏，可以自行重写拓展成其他的任何形式
  Widget getTopBar() {
    return Container(
      height: getTopBarHeight(),
      width: double.infinity,
      color: PColors.topBarColor,
    );
  }

  ///暴露的错误页面方法，可以自己重写定制
  Widget getErrorWidget() {
    return SizedBox(
      //错误页面中心可以自己调整
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: InkWell(
          onTap: onClickErrorWidget,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(_errImgPath),
                width: 150,
                height: 150,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(_errorContentMesage,
                    style: TextStyle(
                      fontWeight: _fontWidget,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///点击错误页面后展示内容
  void onClickErrorWidget() {
    onResume(); //此处 默认onResume 就是 调用网络请求，
  }

  Widget getLoadingWidget() {
    return SizedBox(
      //错误页面中心可以自己调整
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child:
            // 圆形进度条
            CircularProgressIndicator(
          strokeWidth: 4.0,
          backgroundColor: PColors.theme_green,
          // value: 0.2,
          valueColor: AlwaysStoppedAnimation<Color>(PColors.appBarColor),
        ),

//        Container(
//          alignment: Alignment.center,
//          color: Colors.white70,
//          width: 200,
//          height: 200,
//          child: Text("你懂么？~~~"),
//        )
//
      ),
    );
  }

  ///导航栏appBar中间部分 ，不满足可以自行重写
  Widget getAppBarCenter() {
    return Text(
      _appBarTitle,
      style: TextStyle(
        overflow: TextOverflow.ellipsis,
        fontSize: _appBarCenterTextSize,
        color: PColors.appBarContentColor,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  ///导航栏appBar中间部分 ，不满足可以自行重写
  Widget getAppBarRight() {
    return InkWell(
      onTap: clickAppBarRight,
      child: Text(
        _appBarRightTitle,
        style: TextStyle(
          fontSize: _appBarRightTextSize,
          color: PColors.colorPrimary,
        ),
      ),
    );
  }

  void clickAppBarRight() {}

  ///导航栏appBar左边部分 ，不满足可以自行重写
  Widget getAppBarLeft() {
    return InkWell(
      onTap: clickAppBarBack,
      child: Icon(
        Icons.arrow_back,
        color: PColors.appBarContentColor,
      ),
    );
  }

  void clickAppBarBack() {
    finish();
  }

  void finish<T extends Object>([T? result]) {
    if (Navigator.canPop(_contextBaseFunction)) {
      Navigator.pop<T>(_contextBaseFunction, result);
    } else {
      //说明已经没法回退了 ， 可以关闭了
      finishDartPageOrApp();
    }
  }

//
//
//  defaultRouteName → String 启动应用程序时嵌入器请求的路由或路径。
//  devicePixelRatio → double 每个逻辑像素的设备像素数。 例如，Nexus 6的设备像素比为3.5。
//  textScaleFactor → double 系统设置的文本比例。默认1.0
//  toString（） → String 返回此对象的字符串表示形式。
//  physicalSize → Size 返回一个包含屏幕宽高的对象，单位是dp
//
//

  ///返回中间可绘制区域，也就是 我们子类 buildWidget 可利用的空间高度
  double getMainWidgetHeight() {
    double screenHeight = getScreenHeight() - bottomVsrtical;

    if (isTopBarShow()) {
      screenHeight = screenHeight - getTopBarHeight();
    }
    if (isAppBarShow()) {
      screenHeight = screenHeight - getAppBarHeight();
    }

    return screenHeight;
  }

  ///返回屏幕高度
  double getScreenHeight() {
    return MediaQuery.of(_contextBaseFunction).size.height;
  }

  ///返回状态栏高度
  double getTopBarHeight() {
    return MediaQuery.of(_contextBaseFunction).padding.top;
  }

  ///返回appbar高度，也就是导航栏高度
  double getAppBarHeight() {
    return kToolbarHeight;
  }

  ///返回屏幕宽度
  double getScreenWidth() {
    return MediaQuery.of(_contextBaseFunction).size.width;
  }

  Widget _getBaseErrorWidget() {
    return getErrorWidget();
  }

  Widget _getBassLoadingWidget() {
    return getLoadingWidget();
  }

  Widget _getBaseEmptyWidget() {
    return getEmptyWidget();
  }

  Widget getEmptyWidget() {
    return SizedBox(
      //错误页面中心可以自己调整
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: AssetImage(_emptyImgPath),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Text(_emptyWidgetContent, style: TextStyle(fontWeight: _fontWidget, color: PColors.theme_green)),
              )
            ],
          ),
        ),
      ),
    );
  }

  ///关闭最后一个 flutter 页面 ， 如果是原生跳过来的则回到原生，否则关闭app
  void finishDartPageOrApp() {
    SystemNavigator.pop();
  }

  ///导航栏 appBar 可以重写
  Widget getAppBar() {
    return Container(
      height: getAppBarHeight(),
      width: double.infinity,
      color: PColors.appBarColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Row(
            children: [
              //左边返回导航 的位置，可以根据需求变更
              Visibility(
                maintainSize: true,
                maintainAnimation: true,
                maintainState: true,
                visible: !_isBackIconShow,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: getAppBarLeft(),
                ),
              ),
              Expanded(child: Container(padding: const EdgeInsets.only(left: 10, right: 10), alignment: Alignment.center, child: getAppBarCenter())),
              Visibility(
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  visible: !_isRightIconShow,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: getAppBarRight(),
                  )),
            ],
          )),
          const Divider(
            height: 1,
          ),
        ],
      ),
    );
  }

  ///默认这个状态栏下，设置颜色
  void setTopBarBackColor(Color color) {
    // ignore: invalid_use_of_protected_member
    refresh(() {
      PColors.topBarColor = color;
    });
  }

  ///设置导航栏的字体以及图标颜色
  void setAppBarContentColor(Color contentColor) {
    refresh(() {
      PColors.appBarContentColor = contentColor;
    });
  }

  ///默认这个导航栏下，设置颜色
  void setAppBarBackColor(Color color) {
    // ignore: invalid_use_of_protected_member
    refresh(() {
      PColors.appBarColor = color;
    });
  }

  void setAppBarTitle(String title) {
    refresh(() {
      _appBarTitle = title;
    });
  }

  void setAppBarRightTitle(String title) {
    refresh(() {
      _appBarRightTitle = title;
    });
  }

  ///设置错误提示信息
  void setErrorContent(String content) {
    refresh(() {
      _errorContentMesage = content;
    });
  }

  ///设置错误页面显示或者隐藏
  void setErrorWidgetVisible(bool isVisible) {
    refresh(() {
      if (isVisible) {
        //如果可见 说明 空页面要关闭啦
        _isEmptyWidgetVisible = false;
      }
      // 不管如何loading页面要关闭啦，
      _isLoadingWidgetShow = false;
      _isErrorWidgetShow = isVisible;
    });
  }

  ///设置空页面显示或者隐藏
  void setEmptyWidgetVisible(bool isVisible) {
    refresh(() {
      if (isVisible) {
        //如果可见 说明 错误页面要关闭啦
        _isErrorWidgetShow = false;
      }

      // 不管如何loading页面要关闭啦，
      _isLoadingWidgetShow = false;
      _isEmptyWidgetVisible = isVisible;
    });
  }

  void setLoadingWidgetVisible(bool isVisible) {
    refresh(() {
      _isLoadingWidgetShow = isVisible;
    });
  }

  ///设置空页面内容
  void setEmptyWidgetContent(String content) {
    refresh(() {
      _emptyWidgetContent = content;
    });
  }

  ///设置错误页面图片
  void setErrorImage(String imagePath) {
    refresh(() {
      _errImgPath = imagePath;
    });
  }

  ///设置空页面图片
  void setEmptyImage(String imagePath) {
    refresh(() {
      _emptyImgPath = imagePath;
    });
  }

  void setBackIconHide([bool isHide = true]) {
    refresh(() {
      _isBackIconShow = !isHide;
    });
  }

  void setRightIconHide([bool isHide = true]) {
    refresh(() {
      _isRightIconShow = isHide;
    });
  }

  void setBackgroundColor([Color value = Colors.white]) {
    refresh(() {
      _backgroundColor = value;
    });
  }

  ///初始化一些变量 相当于 onCreate ， 放一下 初始化数据操作
  void onCreate();

  ///相当于onResume, 只要页面来到栈顶， 都会调用此方法，网络请求可以放在这个方法
  void onResume();

  ///页面被覆盖,暂停
  void onPause();

  ///返回UI控件 相当于setContentView()
  Widget buildWidget(BuildContext context);

  ///app切回到后台
  void onBackground() {}

  ///app切回到前台
  void onForeground() {}

  ///页面注销方法
  void onDestroy() {}

  void log(String content) {
    if (kDebugMode) {
      print("${getWidgetName()}------:$content");
    }
  }

  ///弹对话框
  void showToastDialog(String message, {String title = "提示", String negativeText = "确定", Function? callBack}) {
    if (message.isNotEmpty) {
      showDialog<void>(
          context: _contextBaseFunction, //BuildContext对象
          barrierDismissible: false,
          builder: (BuildContext context) {
            return MessageDialog(
              title,
              message,
              () {
                Navigator.pop(context);
                if (callBack != null) {
                  callBack();
                }
              },
              negativeText: negativeText,
            );
            //调用对话框);
          });
    }
  }

  String getWidgetName() {
    String className = _contextBaseFunction.toString();
    if (kDebugMode) {
      try {
        className = className.substring(0, className.indexOf("("));
      } catch (err) {
        className = "";
      }
      return className;
    }

    return className;
  }

  ///弹吐司
  void showToast(String? content,
      {Toast length = Toast.LENGTH_SHORT,
      ToastGravity gravity = ToastGravity.BOTTOM,
      Color backColor = Colors.black54,
      Color textColor = Colors.white}) {
    ToastUtils.showToast(content, length: length, gravity: gravity, backColor: backColor, textColor: textColor);
  }

  @override
  showLoading() {
    EasyLoading.show();
  }

  @override
  hideLoading() {
    EasyLoading.dismiss();
  }

  ///返回 状态管理组件
  _buildProviderWidget(BuildContext context) {
    return getProvider().isEmpty ? buildWidget(context) : MultiProvider(providers: getProvider(), child: buildWidget(context));
  }

  String? getClassName() {
    String className = _contextBaseFunction.toString();
    className = className.substring(0, className.indexOf("("));
    return className;
  }

  //可以复写
  List<SingleChildStatelessWidget> getProvider() {
    return List.empty();
  }
}
