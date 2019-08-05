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
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("跳转到搜索页面"),
              onPressed: () {
                //Navigator.pushNamed(context, "/search");
                Navigator.pushNamed(context, "/search", arguments: {'id': 123});
              },
            ),
            RaisedButton(
              child: Text("跳转到注册页面"),
              onPressed: () {
                Navigator.pushNamed(context, "/register");
              },
            )
          ],
        ),
      ),
    );
  }
}
