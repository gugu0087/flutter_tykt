import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../part01/part01_item_page.dart';


class PartDemo08Page extends StatefulWidget {
  const PartDemo08Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PartDemo08Sate();
  }
}

class PartDemo08Sate extends State<PartDemo08Page> {
  int selectType = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("场景八"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            ///  第一个ListView 的 scrollDirection 设置成  Axis.horizontal
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      selectType = index;
                      setState(() {});
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("标题$index"),
                    ),
                  );
                }),
          ),
           /// 第二个 ListView 在 Part01ItemPage 里面
           Expanded(child: Part01ItemPage(selectType)),
        ],
      ),
    );
  }
}
