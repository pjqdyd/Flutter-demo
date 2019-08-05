import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("注册页面"),
        ),
        body: Center(
          child: RaisedButton(
            child: Text("下一步登录"),
            onPressed: (){

              Navigator.pushNamed(context, "/login");

              //替换路由, 用登录页替换当前注册页, 当登录页pop返回时, 就能返回主页
              //Navigator.pushReplacementNamed(context, "/login");
            },
          ),
        )
      ),
    );
  }
}