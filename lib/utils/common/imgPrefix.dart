/*
* 此功能将在adaptive中对外抛出
* 1. with ImgPrefix
* 2. $variate 例：$pfDemoTest
* */

//图片资源库扩展
extension ImageHelper on String {
  String get path {
    return "assets/images/$this";
  }
}
