import 'package:flutter/material.dart';

import 'pages/Search.dart';

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
        body: HomePage(),
      ),
      //theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

//自定义主页组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
            child: Text("跳转到搜索页面"),
            onPressed: (){
              Navigator.of(context).push( //路由跳转
                MaterialPageRoute(
                  builder: (context) => SearchPage(keyWord: "参数1")
                )
              );
            },
          )
    );
  }
}