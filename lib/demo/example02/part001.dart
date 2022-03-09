import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/generated/assets.dart';

/**
 **@time
 **@author xyc
 **@description:
 **/
class Part001DemoPage extends StatefulWidget {
  const Part001DemoPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return Part001DemoState();
  }
}

class Part001DemoState extends State<Part001DemoPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("场景一 常用的item布局"),
      ),
      body: UnconstrainedBox(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          width: width - 20,
          color: Colors.black12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5),
                child: Image.asset(
                  Assets.assetsBg,
                  width: 200,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      Assets.assetsHuoguo,
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const Text("作者")
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "发布时间：${DateTime.now()}",
                  style: const TextStyle(color: Colors.black26, fontSize: 10),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
