import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/**
 **@time
 **@author xyc
 **@description:
 **/
class DeviceUtils{
  static Size getScreenSize() {
    final width = window.physicalSize.width;
    final height = window.physicalSize.height;
    return Size(width, height);
  }
  /// 根据手机的分辨率从 px(像素) 的单位 转成为 dp
  static double px2dip(BuildContext context, double pxValue) {
    final devicePixelRatio = window.devicePixelRatio;
    return (pxValue / devicePixelRatio + 0.5);
  }

  static  setBarStatus({Color color = Colors.transparent}) {
    if (Platform.isAndroid) {
      //设置Android头部的导航栏透明
      SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: color);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}