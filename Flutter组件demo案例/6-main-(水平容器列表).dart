import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//MyApp组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
        ),
        body: HomeContent(),
      ),
      //theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

//主页内容区组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.horizontal, //水平列表, 高度与父容器有关
        children: <Widget>[
          Container(
            width: 180,
            //height: 300,
            color: Colors.deepOrange,
          ),
          Container(
            width: 180,
            //height: 200,
            color: Colors.deepPurpleAccent,
          ),
          Container(
            width: 180,
            //height: 200,
            color: Colors.deepOrange,
            child: ListView( //容器列表里再嵌套一个列表
              children: <Widget>[
                Image.asset("images/face.jpg"),
                Image.asset("images/face.jpg"),
                Image.asset("images/face.jpg"),
                Image.asset("images/face.jpg"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
