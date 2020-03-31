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
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset("images/face.jpg", fit: BoxFit.cover),
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.asset("images/face.jpg", fit: BoxFit.cover, height: 50,width: 50,),
                ),
                title: Text("标题"),
                subtitle: Text("这是一段描述文字"),
              )
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Image.asset("images/face.jpg", fit: BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("images/face.jpg"),
                ),
                title: Text("标题"),
                subtitle: Text("这是一段描述文字"),
              )
            ],
          ),
        )
      ],
    );
  }
}
