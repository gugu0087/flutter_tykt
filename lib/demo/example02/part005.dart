import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_tykt/utils/toast.dart';

import '../../generated/assets.dart';
import 'net_work_utils.dart';

class Part005DemoPage extends StatefulWidget {
  const Part005DemoPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return Part005DemoSate();
  }
}

class Part005DemoSate extends State<Part005DemoPage> {

  void requestNetData(int pageNo) {
    ToastUtils.show("pageNo=$pageNo");
  }

  void requestNetData2() {
    ToastUtils.show("requestNetData2");
  }

  void requestNetData3(int data) {
    ToastUtils.show("requestNetData$data");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: const Text("场景五 控件的点击事件"),
      ),
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(30),
        height: 300,
        width: 200,
        child: Column(
          children: [
            /// ElevatedButton 封装好的点击按钮  onPressed
            ElevatedButton(
              onPressed: () {
                ToastUtils.show("点击事件1");
                requestNetData(5);
              },
              style: ButtonStyle(elevation: MaterialStateProperty.all(5)),
              child: const Text(
                "点击按钮1",
              ),
            ),
            /// TextButton 封装好的点击按钮 onPressed
            TextButton(
                onPressed: () {
                  //ToastUtils.show("点击事件2");
                  requestNetData2();
                },
                child: const Text(
                  "点击按钮2",
                )),
            /// OutlinedButton 封装好的点击按钮 onPressed
            OutlinedButton(
                onPressed: () {
                  ToastUtils.show("点击事件3");
                  NetworkUtils.requestNetData(5,callback:requestNetData3 );
                },
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        BorderSide(color: Colors.black, width: 2))),
                child: const Text(
                  "点击按钮3",
                )),
            /// GestureDetector  onTap
            GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.assetsMeisi,
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                  Text("点击按钮4")
                ],
              ),
              onTap: () {
                ToastUtils.show("点击事件4");
              },
            )
          ],
        ),
        decoration: const ShapeDecoration(
          ///color: Colors.white,
          ///设置渐变色
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.blue]),
            /// 设置背景颜色
            shape: RoundedRectangleBorder(
              /// 设置背景角度
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
