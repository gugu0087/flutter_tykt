import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/generated/assets.dart';

/**
 **@time
 **@author xyc
 **@description:  内容 场景二
 **/
class Part002Page extends StatefulWidget {
  const Part002Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Part002Sate();
  }
}

class Part002Sate extends State<Part002Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("内容 场景二"),
      ),
      body: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(20),
        height: 200,
        width: 300,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  Assets.assetsBg,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        "文文案文案文案文案文案文案文文案文案文案文案文案文案文案文案案文案文案案1",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("文文案文案文案文案文案文案文案文案案2",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:
                                TextStyle(fontSize: 12, color: Colors.black38)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("文文案文案文案文案文案文案文案文案案"),
            ),
            Row(
              children: [
                Container(
                  height: 25,
                  margin: EdgeInsets.only(right: 10),
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  alignment: Alignment.center,
                  width: 50,
                  padding: const EdgeInsets.only(
                      top: 2, bottom: 2, left: 5, right: 5),
                  child: const Text(
                    "标签一",
                    style: TextStyle(fontSize: 12, color: Color(0xFFF37638)),
                  ),
                ),
                DecoratedBox(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Container(
                    height: 25,
                    alignment: Alignment.center,
                    width: 50,
                    padding: const EdgeInsets.only(
                        top: 2, bottom: 2, left: 5, right: 5),
                    child: const Text(
                      "标签二",
                      style: TextStyle(fontSize: 12, color: Color(0xFFF37638)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
