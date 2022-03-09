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
  static  setBarStatus({Color color = Colors.transparent}) {
    if (Platform.isAndroid) {
      //设置Android头部的导航栏透明
      SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: color);
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }
  }
}