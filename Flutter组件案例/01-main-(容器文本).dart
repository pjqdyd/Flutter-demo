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
    return Center(
      child: Container(
        child: Text(
          "我是一个文本",
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 5.0
          ),
          textAlign: TextAlign.center,
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.blue, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(20.0))
        ),
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
      ),
    );
  }
}
