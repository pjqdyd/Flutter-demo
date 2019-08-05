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

  @override
  Widget build(BuildContext context) {
    return ListView.builder( //使用ListView的builder方法来生成列表
      itemCount: listData.length,
      itemBuilder: (context, index){
        return ListTile(
          leading: Image.asset(listData[index]["imageUrl"]),
          title: Text(listData[index]["title"]),
          subtitle: Text(listData[index]["author"]),
        );
      },
    );
  }
}
