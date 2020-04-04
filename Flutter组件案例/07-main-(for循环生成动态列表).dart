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
  //自定义方法,返回一个List组件数组
  List<Widget> _getListData() {
    List<Widget> list = new List();
    for (var i = 0; i < 10; i++) {
      list.add(ListTile(
        title: Text("这是$i列表"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getListData(),
    );
  }
}
