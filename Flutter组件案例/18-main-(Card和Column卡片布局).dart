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

// //主页内容区组件
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       child: AspectRatio(   //配置子元素的宽高比
//         aspectRatio: 2.0/1.0,
//         child: Container(
//           color: Colors.red,
//         )
//       ),
//     );
//   }
// }

//主页内容区组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[

              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28)),
                subtitle: Text("这是展示信息"),
              ),
              ListTile(
                title: Text("电话", style: TextStyle(fontSize: 28)),
                subtitle: Text("这是展示信息"),
              ),
              ListTile(
                title: Text("地址", style: TextStyle(fontSize: 28)),
                subtitle: Text("这是展示信息"),
              ),

            ],
          )
        ),

        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[

              ListTile(
                title: Text("王五", style: TextStyle(fontSize: 28)),
                subtitle: Text("这是展示信息"),
              ),
              ListTile(
                title: Text("电话", style: TextStyle(fontSize: 28)),
                subtitle: Text("这是展示信息"),
              ),
              ListTile(
                title: Text("地址", style: TextStyle(fontSize: 28)),
                subtitle: Text("这是展示信息"),
              ),

            ],
          )
        ),
      ],
    );
  }
}
