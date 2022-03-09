import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/**
 **@time
 **@author xyc
 **@description:
 **/
class ToastUtils {
  static void show(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black38,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
