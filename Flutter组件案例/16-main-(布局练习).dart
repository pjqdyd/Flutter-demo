import 'package:flutter/material.dart';

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
        body: HomeContent(),
      ),
      //theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

//主页内容区组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[

        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 180,
                color: Colors.black,
                child: Text("Hello Flutter", textAlign: TextAlign.center,),
              ),
            )
          ],
        ),

        SizedBox(height: 10),

        Row(
          children: <Widget>[

            Expanded(
              flex: 2,
              child: Container(
                height: 180,
                child: Image.asset("images/face.jpg", fit: BoxFit.cover),
              ),
            ),

            SizedBox(width: 10),

            Expanded(
              flex: 1,
              child: Container(
                height: 180,
                child: ListView(
                  children: <Widget>[
                    Container(
                      height: 85,
                      child: Image.asset("images/face.jpg", fit: BoxFit.cover),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 85,
                      child: Image.asset("images/face.jpg", fit: BoxFit.cover),
                    )
                  ],
                ),
              ),
            )

          ],
        )
      ],
    );
  }
}
