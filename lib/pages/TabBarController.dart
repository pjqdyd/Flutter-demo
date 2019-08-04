import 'package:flutter/material.dart';

//自定义顶部选项卡

class TabBarControllerPage extends StatefulWidget {
  TabBarControllerPage({Key key}) : super(key: key);

  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  //定义TabController
  TabController _tabController;

  //覆盖实现初始化_tabController方法
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);

    _tabController.addListener(() {
      //监听事件
      print(_tabController.indexIsChanging);
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("顶部选项卡"),
        bottom: TabBar(
          controller: this._tabController, //添加TabBarController
          tabs: <Widget>[
            Text("推荐"),
            Text("热门"),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Text("推荐的内容"),
          Text("热门的内容"),
        ],
      ),
    );
  }
}
