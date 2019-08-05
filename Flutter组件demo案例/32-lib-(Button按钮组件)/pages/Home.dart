import 'package:flutter/material.dart';

//自定义主页组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("主页"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("突起按钮"),
                color: Colors.blue,
                textColor: Colors.white,
                //disabledColor: ,
                //disabledTextColor: ,
                //splashColor: , //点击时水波纹颜色'
                //highlightColor: , //点击长按后的颜色
                //elevation: , //阴影范围
                //装在Container容器中就可以设置宽高, Expanded自适应
                onPressed: () {},
              ),

              RaisedButton(
                child: Text("圆角按钮"),
                shape: RoundedRectangleBorder( //按钮形状, 圆角
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
              ),

              RaisedButton.icon(
                icon: Icon(Icons.settings),
                label: Text("图标按钮"),
                // shape: CircleBorder( //形状圆形, 边框颜色
                //   side: BorderSide(color: Colors.white),
                // ),
                onPressed: () {},
              ),

              FlatButton(
                child: Text("扁平按钮"),
                color: Colors.blue,
                onPressed: (){},
              ),

              OutlineButton(
                child: Text("边框按钮"),
                onPressed: (){},
              ),

              IconButton( //按钮图标
                icon: Icon(Icons.send),
                color: Colors.blue,
                onPressed: (){},
              ),

              ButtonBar( //按钮组
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("按钮1"),
                    onPressed: (){},
                  ),
                  RaisedButton(
                    child: Text("按钮2"),
                    onPressed: (){},
                  )
               ],
             ),

             FloatingActionButton(
               child: Text("浮动"),
               onPressed: (){},
             ),

            MyButton(text: "自定义按钮", height: 30, width: 120, pressed: (){print("--");},)

            ],
          ),
        ));
  }
}

//自定义按钮
class MyButton extends StatelessWidget {
  final text; //文本
  final double height;
  final double width;
  final pressed; //点击函数

  //按钮构造器
  const MyButton({this.text = "", this.pressed = null, 
  this.height = 50.0, this.width = 100.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      child: RaisedButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}