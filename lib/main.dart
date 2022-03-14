import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/demo/example01/part02/part02.dart';
import 'package:flutter_tykt/demo/example01/part08/part08.dart';
import 'package:flutter_tykt/demo/example02/part004.dart';
import 'package:flutter_tykt/demo/example02/part005.dart';
import 'package:flutter_tykt/test/part002_page.dart';
import 'package:flutter_tykt/test/part01_page.dart';
import 'package:flutter_tykt/test/part02_page.dart';
import 'package:flutter_tykt/utils/device_utils.dart';

import 'demo/example01/part01/part01.dart';
import 'demo/example01/part0304/part03.dart';
import 'demo/example01/part05/part05.dart';
import 'demo/example01/part06/part06.dart';
import 'demo/example01/part07/part07.dart';
import 'demo/example02/part001.dart';
import 'demo/example02/part002.dart';
import 'demo/example02/part003.dart';
import 'demo/example02/part006.dart';
import 'demo/example02/part007.dart';

void main() {
  DeviceUtils.setBarStatus();
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

// StatefulWidget StatelessWidget
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "七大主流布局场景",
                  style: TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => PartDemo01()));
                    },
                    child: Text("布局场景一")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return PartDemo02Page();
                      }));
                    },
                    child: Text("布局场景二")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return PartDemo03Page();
                      }));
                    },
                    child: Text("布局场景三四")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return PartDemo05Page();
                      }));
                    },
                    child: Text("布局场景五")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return PartDemo06Page();
                      }));
                    },
                    child: Text("布局场景六")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return PartDemo07Page();
                      }));
                    },
                    child: Text("布局场景七")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return PartDemo08Page();
                      }));
                    },
                    child: Text("布局场景八")),
              ],
            ),
            Column(
              children: [
                Text(
                  "七大交互场景",
                  style: TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => Part001DemoPage()));
                    },
                    child: Text("场景一")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return Part002DemoPage();
                      }));
                    },
                    child: Text("场景二")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return Part003DemoPage();
                      }));
                    },
                    child: Text("场景三")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return Part004DemoPage();
                      }));
                    },
                    child: Text("场景四")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return Part005DemoPage();
                      }));
                    },
                    child: Text("场景五")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return Part006DemoPage();
                      }));
                    },
                    child: Text("场景六")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          CupertinoPageRoute(builder: (context) {
                        return Part007DemoPage();
                      }));
                    },
                    child: Text("场景七")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
