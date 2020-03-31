import 'package:flutter/material.dart';

import 'package:date_format/date_format.dart'; //第三方工具

//自定义主页组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var now = DateTime.now(); //获取当前日期

  var now_time = TimeOfDay(hour: 12, minute: 20); //定义时间

  @override
  void initState() { 
    super.initState();

    print(now);

    print(now.millisecondsSinceEpoch); //时间戳

    print(DateTime.fromMillisecondsSinceEpoch(1564992543624)); //时间戳转换

    //使用工具转换
    print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));

    //print(now_time.format(context)); //打印时间
  }

  // //定义显示日期选框的方法
  // _showDatePicker(context){
  //   showDatePicker(
  //     context: context,
  //     initialDate: this.now,
  //     firstDate: DateTime(1980),
  //     lastDate: DateTime(2100),
  //   ).then((result){ //选中日期后的回调(Future代表异步, 类似Promiss)
  //     print(result);
  //   });
  // }

  //定义显示日期选框的方法 (使用异步)
  _showDatePicker(context) async{

    var result = await showDatePicker(
      context: context,
      initialDate: this.now,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
      locale: Locale('zh')
    );

    print(result);

  }

  //定义显示时间的方法
  _showTimePicker(context) async{
     var result = await showTimePicker(
      context: context,
      initialTime: now_time
    );

    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          InkWell( //可以点击的组件(有水波纹)
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[                
                Text("2019-08-10"),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            onTap: (){
                //打开日期组件
                //this._showDatePicker(context);

                //打开时间组件
                this._showTimePicker(context);
            },
          ),
        ],
      )
    );
  }
}