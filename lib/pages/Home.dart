import 'package:flutter/material.dart';

//自定义主页组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return DefaultTabController( //顶部选项卡
    //   length: 2,      //顶部切换的数量
    //   child: Scaffold(
    //     appBar: AppBar(
    //       title: Text("Home主页"),
    //       bottom: TabBar(  //放在title:上,选项卡在顶部就会替换标题
    //         tabs: <Widget>[
    //           Tab(text: "热门"),
    //           Tab(text: "推荐")
    //         ],
    //       ),
    //     ),
    //     body: TabBarView(  //对应上面的TabBar
    //       children: <Widget>[
    //         Text("第一个Tab"),
    //         Text("第二个Tab"),
    //       ],
    //     )
    //   ),
    // );

    return DefaultTabController(
      length: 3, //顶部切换的数量
      child: Scaffold(
        appBar: AppBar(
          title: Row(  //顶部选项卡, 放在顶部
            children: <Widget>[
              Expanded(
                child: TabBar(
                  indicatorColor: Colors.red, //底部指示器颜色
                  indicatorSize: TabBarIndicatorSize.label, //指示器宽度(与lable等长)
                  labelColor: Colors.red,     //选项颜色
                  unselectedLabelColor: Colors.white, //未选中颜色
                  tabs: <Widget>[
                    Tab(text: "热门"),
                    Tab(text: "推荐"),
                    Tab(text: "最新"),
                  ],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          //对应上面的TabBar
          children: <Widget>[
            Text("第一个Tab"),
            Text("第二个Tab"),
            Text("第三个Tab"),
          ],
        ),
      ),
    );
  }
}
