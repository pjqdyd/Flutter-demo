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
        child: Image.network(
          'https://upload-images.jianshu.io/upload_images/14511997-6f681b811b335885.jpg',
          alignment: Alignment.topCenter,
          //color: Colors.blue, //图片背景色
          //colorBlendMode: BlendMode.screen, //图片与背景色混合
      
          fit: BoxFit.fill,
          //cover自适应屏幕,布满整个容器
          //contain全图显示,原比例
          //fill全图显示,拉伸充满父容器
          //fitWidth横向充满
          //fitHeight纵向充满

          repeat: ImageRepeat.repeatX,//图片平铺

        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow
        ),
      )
    );
  }
}
