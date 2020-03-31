import 'package:flutter/material.dart';

//自定义主页组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home主页"),

        //centerTitle: true,

        //backgroundColor: Colors.green,

        //leading: Icon(Icons.menu),  //左侧普通图标

        leading: IconButton(  //左侧按钮图标
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),

        actions: <Widget>[ //右侧图标组
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),

      body: Center(
        child: Text("主页"),
      ),
    );
  }
}
