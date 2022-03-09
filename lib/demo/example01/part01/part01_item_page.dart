import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

/**
 **@time
 **@author xyc
 **@description:
 **/
class Part01ItemPage extends StatelessWidget {
  int selectType = 1;

  Part01ItemPage(this.selectType);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.white60,
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("测试页面$selectType"),
                  );
                }),
          ),
        )
      ],
    );
  }
}
