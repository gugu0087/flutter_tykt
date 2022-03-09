import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/demo/example01/part01/part01_item_page.dart';
import 'package:flutter_tykt/generated/assets.dart';


/**
 **@time
 **@author xyc
 **@description: 场景一
 **/
/// StatelessWidget
class Part01Page extends StatefulWidget {
  const Part01Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Part01State();
  }
}

class Part01State extends State<Part01Page> {
   List<Widget> items=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    items.add(Part01ItemPage(1));
    items.add(Part01ItemPage(2));
    items.add(Part01ItemPage(3));
  }
   int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "标题",
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(Assets.assetsHaodian,width: 20,height: 20,), label: "首页"),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.assetsDingzuo,width: 20,height: 20,), label: "发现"),
          BottomNavigationBarItem(
              icon: Image.asset(Assets.assetsWancan,width: 20,height: 20,), label: "我的")
        ],
        currentIndex: currentIndex,
        onTap:(index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: items[currentIndex] ,
    );
  }
}
