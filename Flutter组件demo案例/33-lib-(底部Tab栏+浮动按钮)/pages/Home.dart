import 'package:flutter/material.dart';

//自定义主页组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  //定义页面的集合, Text()代表是一个单独的页面组件
  List _pageList = [
    Text("这是主页组件"),
    Text("这是分类组件"),
    Text("这是添加组件"),
    Text("这是设置组件"),
    Text("这是个人组件")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: this._pageList[this._currentIndex], //body为对应的页面

      //浮动按钮
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: (){},
      // ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        padding: EdgeInsets.all(6),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            setState(() {
            this._currentIndex = 2;
          });
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomNavigationBar(//底部选项卡
        iconSize: 25.0,
        currentIndex: this._currentIndex,
        type: BottomNavigationBarType.fixed, //超过3个就要设置
        selectedFontSize: 11,
        unselectedFontSize: 10,
        onTap: (int index) { //点击改变激活的下标
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("首页")),
          BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("分类")),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("添加")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("设置")),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("个人"))
        ],
      ),
    );
  }
}