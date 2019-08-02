import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//MyApp组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabs(), //展示Tab栏
      //theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

//自定义组件, 将主页内容Scaffold抽离成有状态组件 (展示Tab栏)
class MyTabs extends StatefulWidget {
  MyTabs({Key key}) : super(key: key);

  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  int _currentIndex = 0;

  //定义页面的集合, Text()代表是一个单独的页面组件
  List _pageList = [
    Text("这是主页组件"),
    Text("这是分类组件"),
    Text("这是设置组件"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
      ),
      body: this._pageList[this._currentIndex], //body为对应的页面
      bottomNavigationBar: BottomNavigationBar(//底部选项卡
        iconSize: 30.0,
        currentIndex: this._currentIndex,
        onTap: (int index) { //点击改变激活的下标
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置"))
        ],
      ),
    );
  }
}
