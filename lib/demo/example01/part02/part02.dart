
/**
 **@time
 **@author xyc
 **@description: 场景二 列表
 **/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class PartDemo02Page extends StatefulWidget {
  const PartDemo02Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PartDemo02State();
  }
}

class PartDemo02State extends State<PartDemo02Page> {
  List<String> netData = [];/// 创建一个装列表数据的数组list
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ///给list 模拟添加数据 30个
    for (int i = 0; i < 30; i++) {
      netData.add("模拟数据$i");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("列表数据"),
      ),
      /// body 里面通过listview.builder 创建列表
      ///
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: netData.length,
          /// itemBuilder 顾名思义就是创建列表每一项item的方法。
          itemBuilder: (context, index) {
            /// return 返回的就是我们列表的每一项
            return Container(
              color: Colors.blue,
              padding: const EdgeInsets.only(left: 10,top: 10),
              margin: const EdgeInsets.only(top: 10, left: 10,right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    netData[index],
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "模拟测试",
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Divider(
                      height: 1,
                      color: Colors.black12,
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
