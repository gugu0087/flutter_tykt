import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tykt/demo/example01/part0304/sliver_header_delegate.dart';
import '../part01/part01_item_page.dart';
import '../part02/part02.dart';

/**
 **@time
 **@author xyc
 **@description: 场景三、四
 * 标题指定 ，列表 ，页面切换
 **/
class PartDemo03Page extends StatefulWidget {
  const PartDemo03Page({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return PartDemo03State();
  }
}
///记得加 SingleTickerProviderStateMixin，因为 TabController 需要用到
class PartDemo03State extends State<PartDemo03Page>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;/// 切换tab的时候需要一个控制器
  List<Widget> tabPages = [];/// 需要切换的页面

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /// 初始化数据
    _tabController = TabController(length: 3, vsync: this);
    tabPages.add(Part01ItemPage(1));
    tabPages.add(Part01ItemPage(2));
    tabPages.add(Part01ItemPage(3));
  }

  /// yunso66
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text("列表数据"),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            ///其他内容
            SliverToBoxAdapter(
              child: Container(
                color: Colors.brown,
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        alignment: Alignment.center,
                        width: 60,
                        height: 30,
                        child: Text("标题",style: TextStyle(color: Colors.white),),
                      );
                    }),
              ),
            ),
            /// 需要置顶的tab
            SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate.fixedHeight(
                  height: 40,
                  isShouldReset: true,
                  child: Container(
                    color: Colors.white,
                    child: TabBar(
                      labelPadding: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      labelStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                      tabs: const [
                        Text(
                          "美食餐厅",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "优惠套餐",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "单人餐",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                      controller: _tabController,
                      indicatorColor: const Color(0xffFFD41B),
                      indicatorSize: TabBarIndicatorSize.label,
                    ),
                    padding: const EdgeInsets.only(top: 0),
                  )),
            )
          ];
        },
        /// 需要切换的页面
        body: TabBarView(
          controller: _tabController,
          children: tabPages,
        ),
      ),
    );
  }
}
