import 'package:flutter/material.dart';

/**
 **@time
 **@author xyc
 **@description:
 **/
class SelfBuildDialog extends Dialog {
  SelfBuildDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: UnconstrainedBox(
        child: Container(
          padding: EdgeInsets.all(10),
          width: 200,
          color: Colors.white,
          child: Column(
            children: [
              const Text("标题"),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(("内容内容内容内容内容内容内容内容内容内容内容内容")),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("取消")),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("确定"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
