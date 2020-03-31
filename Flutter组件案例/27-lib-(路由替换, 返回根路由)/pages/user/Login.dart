import 'package:flutter/material.dart';
import '../Home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            title: Text("登录页面"),
          ),
          body: Center(
            child: RaisedButton(
              child: Text("登录"),
              onPressed: (){

                //返回根路由, (将其他路由置空, 返回主页)
                Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => new HomePage()),

                  (route) => route == null
                );

              },
            ),
          )),
    );
  }
}
