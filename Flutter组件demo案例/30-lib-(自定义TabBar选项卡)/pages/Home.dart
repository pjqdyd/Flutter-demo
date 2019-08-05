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
        title: Text("主页"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("跳转到顶部TabBar页面"),
          onPressed: (){
            Navigator.pushNamed(context, "/tabBarController");
          },
        ),
      ),
    );
  }
}
