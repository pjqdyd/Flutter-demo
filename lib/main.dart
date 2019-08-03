import 'package:flutter/material.dart';
import 'routes/Routes.dart';

void main() => runApp(MyApp());

//MyApp组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //home: HomePage(),
        initialRoute: '/', //初始化时加载的路由(HomePage主页)
        onGenerateRoute: onGenerateRoute //调用Routes.dart中的可传参数方法
      );
  }
}
