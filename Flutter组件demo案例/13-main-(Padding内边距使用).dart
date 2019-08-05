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
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.7,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/face.jpg", fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/face.jpg", fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/face.jpg", fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/face.jpg", fit: BoxFit.cover),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: Image.asset("images/face.jpg", fit: BoxFit.cover),
          ),
        ],
      ),
    );
  }
}
