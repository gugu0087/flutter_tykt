import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../generated/assets.dart';

class Part004DemoPage extends StatefulWidget {
  const Part004DemoPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Part004DemoSate();
  }
}

class Part004DemoSate extends State<Part004DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text("场景四 控件的背景效果"),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        height: 300,
        width: 200,
        child: DecoratedBox(
          child: const Padding(
            padding: EdgeInsets.only(top: 2, bottom: 2, left: 5, right: 5),
            child: Text(
              "居中内容",
            ),
          ),
          /// 设置边框
          decoration: BoxDecoration(
            border: Border.all(width:2, color: Colors.brown),
            borderRadius: BorderRadius.all(const Radius.circular(5)),
          ),
        ),
        decoration: const ShapeDecoration(
            ///color: Colors.white,
            ///设置渐变色
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white,Colors.blue]),
            /// 设置背景颜色
            shape: RoundedRectangleBorder(
                /// 设置背景角度
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
