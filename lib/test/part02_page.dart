import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 **@time
 **@author xyc
 **@description:
 **/
class Part02Page extends StatefulWidget {
  const Part02Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Part02PageState();
  }
}

class Part02PageState extends State<Part02Page> {
  List<String> items = [];
  List<Widget> items2 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // for (int i = 0; i < 20; i++) {
    //   items.add("模拟数据$i");
    //   items2.add(Text("dsds"));
    // }
  }

  /// yunso66
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("标题"),
      ),
      // body: ListView(
      //   children: items2,
      // ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.all(10),
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(items[index]),
                  const Text("二级标题"),
                ],
              ),
            );
          }),
    );
  }
}
