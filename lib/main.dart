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
  /*
   * 定义一个返回容器数组的方法
   */
  List<Widget> _getListData() {
    List<Widget> list = new List();
    //循环添加20个容器
    for (var i = 0; i < 20; i++) {
      list.add(Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Text(
          "这是第 $i 条数据",
          style: TextStyle(color: Colors.blue, fontSize: 20),
        ),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //分成两列布局
      crossAxisSpacing: 20, //列间距
      mainAxisSpacing: 20,  //行间距
      padding: EdgeInsets.all(10), //内边距
      childAspectRatio: 0.7, //单个网格元素的宽高比
      // children: <Widget>[
      //   Text("HELLO"),
      //   Text("HELLO"),
      //   Text("HELLO"),
      //   Text("HELLO"),
      //   Text("HELLO"),
      // ],
      children: this._getListData()
    );
  }
}
