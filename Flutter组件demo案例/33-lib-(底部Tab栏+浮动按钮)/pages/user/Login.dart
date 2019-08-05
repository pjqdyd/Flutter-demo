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
        body: Text("登录"),
      ),
    );
  }
}
