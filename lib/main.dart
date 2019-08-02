import 'package:flutter/material.dart';

import 'pages/Search.dart';

void main() => runApp(MyApp());

//MyApp组件
class MyApp extends StatelessWidget {

  //定义常量命名路由
  final routers = {
    '/search': (context, {arguments}) => SearchPage(arguments: arguments),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
        ),
        body: HomePage(),
      ),

      // routes: { //Routers必须定义在根组件中 (命名路由)
      //   '/search': (context)=> SearchPage(),
      // },

      //监听路由实现命名路由可传参数 (固定写法,直接复制即可)
      onGenerateRoute: (RouteSettings settings){

          //统一处理
          final String name = settings.name;
          final Function pageContentBuilder = this.routers[name]; //获取返回路由的构建方法
          if(pageContentBuilder != null){
            if(settings.arguments != null){ //参数不为空
              final Route route = MaterialPageRoute(builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
              return route;
            }else{
              final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
                return route;
            }
          }

      },
    );
  }
}

//自定义主页组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
            child: Text("跳转到搜索页面"),
            onPressed: (){
              //Navigator.pushNamed(context, "/search");
              Navigator.pushNamed(context, "/search", arguments: {'id': 123});
            },
          )
    );
  }
}