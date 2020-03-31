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
    return Container(
      height: 600,
      alignment: Alignment.topCenter,
      child: Wrap(
        spacing: 10, //子组件主轴方向的间距
        alignment: WrapAlignment.center, //主轴上的对齐方式
        runSpacing: 10, //纵轴的间距
        //runAlignment: WrapAlignment.end, //纵轴的对齐方式
        direction: Axis.vertical, //纵轴排列
        children: <Widget>[
          MyButton("第一季"),
          MyButton("第二季"),
          MyButton("第三季"),
          MyButton("第四季"),
          MyButton("第五季"),
          MyButton("第六季(热门)"),
          MyButton("第七季"),
          MyButton("第八季(最新)"),
        ],
      ),
    );
  }
}

//自定义按钮组件
class MyButton extends StatelessWidget {
  //不能修改, 由构造器初始化
  final String text;

  //text为必传, key是当前组件的key, 也可不先初始化父类
  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: () {},
    );
  }
}
