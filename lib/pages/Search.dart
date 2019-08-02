import 'package:flutter/material.dart';
/** 
 * 搜索页面
*/

class SearchPage extends StatelessWidget {

  final arguments;

  SearchPage({this.arguments}); //构造方法, 接收参数对象

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面")
      ),
      body: Text("搜索页面内容区域--${arguments != null ? arguments['id'] : '0'}"),
      floatingActionButton: FloatingActionButton( //浮动按钮
        child: Text("返回"),
        onPressed: (){
          Navigator.of(context).pop(); //退出当前堆, 返回上一页
        },
      ),
    );
  }
}