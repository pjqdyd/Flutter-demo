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
    return Center(
      child: Container(
        //加载本地图片
        //1.根目录创建images文件夹,添加图片
        //2.子目录2.0x和3.0x下都要有同名图片,规范适应不同尺寸的屏幕
        //3.在pubspec.yaml文件中添加:
        //assets:
        //  - images/face.jpg
        //  - images/2.0x/face.jpg
        //  - images/3.0x/face.jpg
        //使用:
        child: Image.asset("images/face.jpg"),
        height: 300,
        width: 300,
      ),
    );
  }
}
