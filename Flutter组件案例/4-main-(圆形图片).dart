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
  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Container( //实现圆形图片的方法一
  //       width: 300,
  //       height: 300,
  //       decoration: BoxDecoration(
  //         color: Colors.yellow,
  //         // borderRadius: BorderRadius.all(
  //         //   Radius.circular(150),
  //         // ),
  //         borderRadius: BorderRadius.circular(150),
  //         image: DecorationImage(
  //           image: NetworkImage("https://upload-images.jianshu.io/upload_images/14511997-64fa474ee09cda5e.jpg"),
  //           fit: BoxFit.cover,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //实现圆形图片方法2
        child: ClipOval(
          child: Image.network(
            "https://upload-images.jianshu.io/upload_images/14511997-64fa474ee09cda5e.jpg",
            width: 300,
            height: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

//补充方法三, 用于头像 CircleAvatar(  backgroundImage: AssetImage("images/face.jpg"),),
