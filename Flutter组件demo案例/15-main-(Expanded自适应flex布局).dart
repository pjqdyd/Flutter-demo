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
  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: IconContainer(Icons.search, color: Colors.blue)
          ),
          Expanded(
            flex: 2,
            child: IconContainer(Icons.home, color: Colors.orange)
          ),  
        ],
      );
  }
}

//自定义的图标容器组件
class IconContainer extends StatelessWidget {
  double size = 32.0;
  Color color = Colors.blue;
  IconData icon;

  //覆盖构造器, icon必传, color和size可选命名参数
  IconContainer(this.icon, {this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: this.color,
      child: Center(
        child: Icon(this.icon, size: this.size, color: Colors.white),
      ),
    );
  }
}
