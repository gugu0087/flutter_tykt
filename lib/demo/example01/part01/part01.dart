
/**
 **@time
 **@author xyc
 **@description: 场景一：一般的首页底部切换布局
 **/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/demo/example01/part01/part01_item_page.dart';
import 'package:flutter_tykt/generated/assets.dart';
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
        title: const Text(" 场景一：首页底部切换布局"),
      ),
      /// 利用bottomNavigationBar 属性设置三个底部切换按钮
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
        /// BottomNavigationBar 里面提供了点击tab切换 按钮的回调方法 onTap,
        /// 点击切换之后，会执行onTap 里面的代码
        onTap: (int index) {
          /// setState 重新调用 Widget build(BuildContext context) 方法
          /// 再次刷新界面，此时 selectIndex 的值就是刚才点击的index了
          setState(() {
            selectIndex = index;
          });
        },
        currentIndex: selectIndex,
      ),
      /// 在body里面设置三个页面的切换
      /// 通过点击tab，获得选择页面下标 selectIndex
      body: itemPages[selectIndex],
    );
  }
}
