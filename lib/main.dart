import 'package:flutter/material.dart';
import 'routes/Routes.dart';

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
        body: HomePage(),
      ),

      // routes: { //routers必须定义在根组件中 (命名路由)
      //   '/search': (context)=> SearchPage(),
      // },

      //initialRoute: "/", //初始化时加载的路由
      onGenerateRoute: onGenerateRoute //调用Routes.dart中的可传参数方法

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