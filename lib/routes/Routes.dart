import 'package:flutter/material.dart';
import '../pages/Home.dart';
import '../pages/user/Login.dart';
import '../pages/user/Register.dart';

//定义常量命名路由
final routers = {
  '/': (context) => HomePage(),
  '/register': (context) => RegisterPage(),
  '/login': (context) => LoginPage(),
  //'/search': (context, {arguments}) => SearchPage(arguments: arguments),
};

//监听路由实现命名路由可传参数的方法 (固定写法,直接复制即可)
var onGenerateRoute = (RouteSettings settings) {
  //统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routers[name]; //获取返回路由的构建方法
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      //参数不为空
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
