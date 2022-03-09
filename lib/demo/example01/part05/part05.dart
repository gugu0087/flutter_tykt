import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/generated/assets.dart';

/**
 **@time
 **@author xyc
 **@description:
 **/
class PartDemo05Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PartDemo05State();
  }
}

class PartDemo05State extends State<PartDemo05Page> {
  void onIndexChange(index) {
    print("xyc-index = " + index.toString());
  }

  List<String> items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 6; i++) {
      items.add("选项$i");
    }
  }

  @override
  Widget build(BuildContext context) {
   double width =  MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(""),
      ),
      body: CustomScrollView(
        slivers: [
          /// 轮播图
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              width: width,
              child: Swiper(
                itemBuilder: (context, index) {
                  return  Image.network(
                    "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.jj20.com%2Fup%2Fallimg%2F1113%2F092919113248%2F1Z929113248-8-1200.jpg",
                    fit: BoxFit.fill,
                  );
                },
                onIndexChanged: onIndexChange,
                itemCount: 3,
                autoplay: true,
                loop: true,
                 pagination: SwiperPagination(),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 2,
            ),
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.white,
                margin: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      Assets.assetsHaodian,
                      height: 20,
                      width: 20,
                    ),
                    Padding(padding: EdgeInsets.only(top: 5),child: Text(items[index]),)
                  ],
                ),
              );
            }, childCount: items.length),
          ),
          SliverFixedExtentList(
            itemExtent: 50.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                //创建列表项
                return Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: Text('list item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
