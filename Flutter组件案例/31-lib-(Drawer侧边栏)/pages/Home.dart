import 'package:flutter/material.dart';

//自定义主页组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: Center(
        child: Text("主页"),
      ),
      drawer: Drawer(   //左侧边栏
        child: Column(
          children: <Widget>[
            // DrawerHeader(
            //   child: Text("头部"),
            // ),
            Row(
              //头部自动扩展
              children: <Widget>[
                Expanded(
                  child: DrawerHeader(
                    child: Text("头部"),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      //image: DecorationImage(image: ),
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.people)),
              title: Text("用户中心"),
            ),
            Divider(), //线条
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.people)),
              title: Text("用户中心"),
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.people)),
              title: Text("用户登录"),
              onTap: (){
                Navigator.of(context).pop(); //隐藏侧边栏
                Navigator.pushNamed(context, "/login");
              },
            )
          ],
        ),
      ),

      endDrawer: Drawer( //右侧边栏
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: UserAccountsDrawerHeader( //默认用户侧边栏头部
                    accountName: Text("名字"),
                    accountEmail: Text("邮箱"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage("images/face.jpg"),
                    ),
                    //decoration: , //样式
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
