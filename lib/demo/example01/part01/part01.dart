import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/demo/example01/part01/part01_item_page.dart';
import 'package:flutter_tykt/generated/assets.dart';

/**
 **@time
 **@author xyc
 **@description: 场景一：一般的首页底部切换布局
 **/

class PartDemo01 extends StatefulWidget {
  const PartDemo01({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PartDemo01State();
  }
}

class PartDemo01State extends State<PartDemo01> {
  List<Widget> itemPages = [];
  int selectIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemPages
      ..add(Part01ItemPage(1))
      ..add(Part01ItemPage(2))
      ..add(Part01ItemPage(3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("dsdsd"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.assetsWancan,
                width: 20,
                height: 20,
              ),
              label: "首页"),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.assetsHaodian,
                width: 20,
                height: 20,
              ),
              label: "发现"),
          BottomNavigationBarItem(
              icon: Image.asset(
                Assets.assetsDingzuo,
                width: 20,
                height: 20,
              ),
              label: "我的"),
        ],
        onTap: (int index) {
          setState(() {
            selectIndex = index;
          });
        },
        currentIndex: selectIndex,
      ),
      body: itemPages[selectIndex],
    );
  }
}
