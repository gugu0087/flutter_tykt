import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../generated/assets.dart';

class Part003DemoPage extends StatefulWidget {
  const Part003DemoPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return Part003DemoSate();
  }
}

class Part003DemoSate extends State<Part003DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("场景三 常用的item布局"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                children: [
                  /// 图片横向铺满
                  Container(
                    width: double.infinity,
                    /// 强制在宽度上铺满
                    margin: const EdgeInsets.only(bottom: 5, right: 5),
                    child: Image.asset(
                      Assets.assetsBg,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  /// 文案
                  const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 5),
                    child: Text(
                      "文案文案文案文案文文案文案文案文文案文案文案文文案文案文案文案文案文案文案文案文案文案文案文案案文文案文案文案文案文案文案文案文案文案文案文案文案案文案文案文案文案",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  /// Spacer() 弹簧控件 把 文案一和 99.992个控件分别撑开。
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Text("文案一"),
                        Spacer(),
                        Text("¥99.99"),
                      ],
                    ),
                  ),
                  /// 三个控件均分  MainAxisAlignment.spaceBetween
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      DecoratedBox(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.blue),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "标签一",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.blue),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "标签二",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.blue),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "标签三",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
