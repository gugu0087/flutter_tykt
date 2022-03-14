import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class PartDemo06Page extends StatefulWidget {
  const PartDemo06Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PartDemo06State();
  }
}

class PartDemo06State extends State<PartDemo06Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("标题"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 0, bottom: 20),
        /// WaterfallFlow 实现瀑布流效果
        /// SliverWaterfallFlowDelegateWithFixedCrossAxisCount 设置item项的间距等
        child: WaterfallFlow.builder(
            padding: EdgeInsets.all(5),
            gridDelegate: SliverWaterfallFlowDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 10,
              lastChildLayoutTypeBuilder: (index) => index == 20
                  ? LastChildLayoutType.foot
                  : LastChildLayoutType.none,
            ),
            itemCount: 20,
            /// itemBuilder 构建瀑布流item项
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Colors.blue,

                /// 模拟高度不一致的样式
                height: (100 + index * 20) >= 260 ? 200 : (100 + index * 20),
                child: ListTile(
                  title: Text(
                    "我是内容$index",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
