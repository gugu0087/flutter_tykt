import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/demo/example02/self_build_dialog.dart';
import 'package:flutter_tykt/utils/toast.dart';

class Part006DemoPage extends StatefulWidget {
  const Part006DemoPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Part006DemoState();
  }
}

class Part006DemoState extends State<Part006DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                showAlertDialog(context);
              },
              child: Text("AlertDialog弹窗提示"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                showSimpleDialog(context);
              },
              child: Text("SimpleDialog弹窗提示"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                showBottomDialog(context);
              },
              child: Text("BottomDialog弹窗提示"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                showSelfBuildDialog(context);
              },
              child: Text("自定义弹窗提示"),
            ),
          ),
        ],
      ),
    );
  }
  /// AlertDialog
  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("标题标题标题标"),
            content: const Text("内内容内容内容内容容内内容内容内容内容容内内容内容内容内容容"),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("取消")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("确定")),
            ],
          );
        });
  }
  /// SimpleDialog
  void showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text("提示"),
            children: [
              TextButton(
                  onPressed: () {
                    ToastUtils.show("选项一");
                  },
                  child: const Text("选项一")),
              TextButton(
                  onPressed: () {
                    ToastUtils.show("选项二");
                  },
                  child: const Text("选项二")),
              TextButton(
                  onPressed: () {
                    ToastUtils.show("选项三");
                  },
                  child: const Text("选项三")),
            ],
          );
        });
  }
  /// BottomDialog
  void showBottomDialog(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.settings),
                  title:const Text("设置"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading:const Icon(Icons.home),
                  title:const Text("主页"),
                  onTap: () => Navigator.pop(context),
                ),
                ListTile(
                  leading:const Icon(Icons.message),
                  title:const Text("消息"),
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          );
        });
  }
   /// 自定义dianlog
  void showSelfBuildDialog(BuildContext context){
    showDialog(context: context, builder: (context){
      return SelfBuildDialog();
    });
  }
}
