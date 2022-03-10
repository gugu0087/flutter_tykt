import 'package:flutter/material.dart';
import 'package:flutter_tykt/demo/example01/part08/part08.dart';
import 'package:flutter_tykt/demo/example02/part004.dart';
import 'package:flutter_tykt/demo/example02/part005.dart';
import 'package:flutter_tykt/test/part01_page.dart';
import 'package:flutter_tykt/test/part02_page.dart';
import 'package:flutter_tykt/utils/device_utils.dart';

import 'demo/example01/part06/part06.dart';
import 'demo/example01/part07/part07.dart';
import 'demo/example02/part001.dart';
import 'demo/example02/part002.dart';
import 'demo/example02/part003.dart';
import 'demo/example02/part006.dart';
import 'demo/example02/part007.dart';

void main() {
  DeviceUtils.setBarStatus();
  runApp(const MyApp());
}

// StatefulWidget StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: Part006DemoPage(),
      home: Part007DemoPage(),
    );
  }
}
