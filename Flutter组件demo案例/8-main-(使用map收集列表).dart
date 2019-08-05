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
  //定义一个List对象数组
  List listData = [
    {"title": "标题一", "author": "作者1", "imageUrl": "images/face.jpg"},
    {"title": "标题二", "author": "作者2", "imageUrl": "images/face.jpg"},
    {"title": "标题三", "author": "作者3", "imageUrl": "images/face.jpg"}
  ];

  //自定义方法, 返回组件数组
  List<Widget> _getListData() {

    //将list数组映射成一个新的ListTile组件数组 
    var tempList = listData.map((value) {
      return ListTile(
        leading: Image.asset(value["imageUrl"]),
        title: Text(value["title"]),
        subtitle: Text(value["author"]),
      );
    });

    return tempList.toList(); //map方法返回的是类似("xxx","xxx"),所以要tolist
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getListData(),
    );
  }
}
