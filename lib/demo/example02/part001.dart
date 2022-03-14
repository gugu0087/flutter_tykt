import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/generated/assets.dart';


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
      /// UnconstrainedBox 不受最外层布局的约束，
      /// Container 容器自己单独设置大小
      body: UnconstrainedBox(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          width: width - 40,
          color: Colors.black12,
          /// row 横向  column 纵向布局
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// 第一行标题文案 ，最大2行，超过2行 省略处理
              const Text(
                "标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案标题文案",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              /// 中间显示固定大小的图片
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 5),
                child: Image.asset(
                  Assets.assetsBg,
                  width: 200,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              /// Row 实现头像和昵称的效果
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      Assets.assetsBg,
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Text("作者")
                ],
              ),
              ///  发布时间
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
