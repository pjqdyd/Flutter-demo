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
    return ListView(
      children: listData.map((value){ //循环数据, 渲染卡片

        return Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset(value["imageUrl"], fit: BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(value["imageUrl"]),
                ),
                title: Text(value["title"]),
                subtitle: Text(value["author"], maxLines: 2, overflow: TextOverflow.ellipsis,),
              )
            ],
          ),
        );

      }).toList(),
    );
  }
}
