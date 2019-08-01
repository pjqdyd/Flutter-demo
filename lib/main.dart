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
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Stack(
//         //alignment: Alignment.center, //所有子组件的对齐方式(位置)
//         alignment: Alignment(0, 0),
//         children: <Widget>[
//           Container(
//             height: 400,
//             width: 300,
//             color: Colors.red,
//           ),
//           Text(
//             "这是文本",
//             style: TextStyle(fontSize: 40, color: Colors.white),
//           )
//         ],
//       ),
//     );
//   }
// }

//主页内容区组件
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         height: 400,
//         width: 300,
//         color: Colors.red,
//         child: Stack(
//           //alignment: Alignment.center, //所有子元素图标会重叠在中心
//           children: <Widget>[
//             Align(
//               alignment: Alignment.topLeft,
//               child: Icon(Icons.home, size: 40, color: Colors.white),
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Icon(Icons.search, size: 30, color: Colors.white),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Icon(Icons.send, size: 60, color: Colors.orange),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//主页内容区组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 300,
        color: Colors.red,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 10,
              child: Icon(Icons.home, size: 40, color: Colors.white),
            ),
             Positioned(
              bottom: 0,
              left: 100,
              child: Icon(Icons.search, size: 30, color: Colors.white),
            ),
             Positioned(
              right: 0,
              child: Icon(Icons.send, size: 60, color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
