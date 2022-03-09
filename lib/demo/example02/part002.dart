import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../generated/assets.dart';

/**
 **@time
 **@author xyc
 **@description:
 **/
class Part002DemoPage extends StatefulWidget {
  const Part002DemoPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Part002DemoSate();
  }
}

class Part002DemoSate extends State<Part002DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text("场景二 常用的item布局"),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 5, right: 5),
                        child: Image.asset(
                          Assets.assetsBg,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: const [
                          Text(
                            "测试文案测试文案测试文案测试文案测试文案测试文案测试文案测试文案测试文案测试文案",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                                "内容内容文案内容文案内容文案内容文案内容文案内容文案内容文案内容文案内容文案文案",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 12)),
                          ),
                        ],
                      ))
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "文案文案文案文案文文案文案文案文文案文案文案文文案文案文案文案文案文案文案文案文案文案文案文案案文文案文案文案文案文案文案文案文案文案文案文案文案案文案文案文案文案",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
