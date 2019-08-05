import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//MyApp组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: HomeContent(),
      ),
      //theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

//自定义主页内容区组件 (有状态组件)
class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
       child: Column(
         children: <Widget>[
           Chip(
             label: Text("${this.count}"),
           ),
           RaisedButton(
             child: Text("按钮"),
             onPressed: (){ //监听按钮
                setState(() { //改变数据会渲染到页面上
                  this.count++; 
                });
             },
           )
         ],
       ),
    );
  }
}