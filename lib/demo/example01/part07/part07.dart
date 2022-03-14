import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/utils/toast.dart';

class PartDemo07Page extends StatefulWidget {
  const PartDemo07Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PartDemo07State();
  }
}

class ItemBean {
  String name;
  List<String> contents;

  ItemBean(this.name, this.contents);
}

class PartDemo07State extends State<PartDemo07Page> {
  List<ItemBean> fenLeis = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    for (int i = 0; i < 5; i++) {
      List<String> contents = [];
      for (int j = 0; j < 20; j++) {
        contents.add("标题$i内容$j");
      }
      ItemBean bean = ItemBean("标题$i", contents);
      fenLeis.add(bean);
    }
  }

  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("场景 筛选栏"),
      ),
      body: Row(
        children: [
          Expanded(
              flex: 1,
              child: ListView.builder(
                  itemCount: fenLeis.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        selectIndex = index;
                        setState(() {});
                      },
                      child: ListTile(
                        title: Text(fenLeis[index].name),
                      ),
                    );
                  })),
          Expanded(
              flex: 3,
              child: ListView.builder(
                  itemCount: fenLeis[selectIndex].contents.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: ListTile(
                        title: Text(fenLeis[selectIndex].contents[index]),
                      ),
                      onTap: () {
                        ToastUtils.show(fenLeis[selectIndex].contents[index]);
                      },
                    );
                  })),
        ],
      ),
    );
  }
}
