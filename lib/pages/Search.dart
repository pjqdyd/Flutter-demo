import 'package:flutter/material.dart';
/** 
 * 搜索页面
*/

class SearchPage extends StatelessWidget {

  String keyWord;

  SearchPage({this.keyWord = "默认"}); //构造方法, 接收参数

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("搜索页面")
      ),
      body: Text("搜索页面内容区域--${this.keyWord}"),
    );
  }
}