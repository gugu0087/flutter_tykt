import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 **@time
 **@author xyc
 **@description: 场景二 列表
 **/
class PartDemo02Page extends StatefulWidget {
  const PartDemo02Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PartDemo02State();
  }
}

class PartDemo02State extends State<PartDemo02Page> {
  List<String> netData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 30; i++) {
      netData.add("模拟数据$i");
    }
  }

  ///  ListTile(
  ///               title: Text(netData[index]),
  ///             )
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("列表数据"),
      ),
      // body: ListView(
      //   children: [
      //     Text("sdsdsd"),
      //     Text("sdsdsd"),
      //     Text("sdsdsd"),
      //     Text("sdsdsd"),
      //     Text("sdsdsd"),
      //     Text("sdsdsd"),
      //   ],
      // ),

      body: ListView.builder(
          itemCount: netData.length,
          itemBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              padding: EdgeInsets.only(left: 10,top: 10),
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    netData[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "模拟测试",
                    style: TextStyle(color: Colors.black54, fontSize: 10),
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
