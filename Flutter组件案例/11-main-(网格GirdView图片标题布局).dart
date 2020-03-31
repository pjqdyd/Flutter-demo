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

  //返回容器列表组件的方法
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Column(  //列布局,与ListView不同的是,不会固定大小
          children: <Widget>[
            Image.asset(value['imageUrl']),
            Text(
              value['title'],
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2, //分成两列布局
        crossAxisSpacing: 20, //列间距
        mainAxisSpacing: 20, //行间距
        padding: EdgeInsets.all(10), //内边距
        //childAspectRatio: 0.7, //单个网格元素的宽高比
        // children: <Widget>[
        //   Text("HELLO"),
        //   Text("HELLO"),
        //   Text("HELLO"),
        //   Text("HELLO"),
        //   Text("HELLO"),
        // ],
        children: this._getListData());
  }
}
