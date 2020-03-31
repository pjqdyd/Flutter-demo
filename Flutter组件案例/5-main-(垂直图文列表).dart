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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        //列表元素数组, 表示可以定义任意Widget元素, ListTile表示一个图文元素(也可以是其他组件元素)
        ListTile(
          title: Text(
            "这是标题",
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.yellow,
            size: 40,
          ), //设置前置图标
          title: Text("这是标题"),
          subtitle: Text("二级标题"),
        ),
        ListTile(
          title: Text("这是标题"),
          subtitle: Text("二级标题"),
          trailing: Icon(Icons.home), //设置后置图标
        ),
        ListTile(
          leading: Image.asset("images/face.jpg"), //图片图标
          title: Text("这是标题"),
          subtitle: Text("二级标题"),
        ),
      ],
    );
  }
}
