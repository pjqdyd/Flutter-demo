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

  //抽离返回容器组件的方法, 用于在GridView.builder中遍历构建容器
  Widget _getListData(context, index) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Column(
        children: <Widget>[
          Image.asset(listData[index]['imageUrl']),
          Text(listData[index]['title'])
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder( //遍历构建动态网格
      itemCount: listData.length,
      itemBuilder: this._getListData,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, //分成两列
        mainAxisSpacing: 10, //水平间距
        crossAxisSpacing: 10, //列间距
      ),
    );
  }
}
