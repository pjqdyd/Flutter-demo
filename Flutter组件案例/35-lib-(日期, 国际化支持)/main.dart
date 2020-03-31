import 'package:flutter/material.dart';
import 'routes/Routes.dart';

//国际化
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

//MyApp组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //去掉debug显示
        //home: HomePage(),
        initialRoute: '/', //初始化时加载的路由(HomePage主页)
        onGenerateRoute: onGenerateRoute, //调用Routes.dart中的可传参数方法

        //国际化配置 (会根据设备更改语言)
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('zh', 'CH'),
          const Locale('en', 'US')
        ],
      );
  }
}
