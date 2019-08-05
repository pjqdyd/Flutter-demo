import 'package:flutter/material.dart';

//自定义主页组件
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //文本输出框的控制值对象 (如果有初始值就要这样写)
  var _username = new TextEditingController();

  //或者直接定义值
  String password;

  var flag = false;
  int sex = 1;
  int count = 1;

  @override
  void initState() { 
    super.initState();
    _username.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[

            TextField(//文本输入框（绑定值控制器）
              controller: _username,
              onChanged: (value){
               setState(() {
                  this._username.text = value;
               });
              },
            ),
            Container(
              width: double.infinity, //自适应
              child: RaisedButton(
                child: Text("提交1"),
                onPressed: (){
                  print(this._username.text);
                },
              ),
            ),
            SizedBox(height: 10),

            TextField(//文本输入框（直接绑定值）
              onChanged: (value){
               setState(() {
                  this.password = value;
               });
              },
            ),
            Container(
              width: double.infinity, //自适应
              child: RaisedButton(
                child: Text("提交2"),
                onPressed: (){
                  print(this.password);
                },
              ),
            ),
            SizedBox(height: 10),

            TextField(//多行文本输入框
              maxLength: 100,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "请输入..",
                border: OutlineInputBorder() //是否显示边框
              ),
            ),
            SizedBox(height: 10),

            TextField(//密码输入框
              obscureText: true,
              decoration: InputDecoration(
                hintText: "请输入密码..",
              ),
            ),
            SizedBox(height: 10),

            TextField(//标签输入框
              decoration: InputDecoration(
                labelText: "用户名:",
                hintText: "请输入用户名..",
              ),
            ),
            SizedBox(height: 10),

            TextField(//带图标输入框
              decoration: InputDecoration(
                icon: Icon(Icons.people),
                hintText: "请输入用户名..",
              ),
            ),
            SizedBox(height: 10),
 
            Checkbox( //多选框
              value: this.flag,
              activeColor: Colors.yellow,
              onChanged: (val){
                setState(() {
                 this.flag = val;
                });
              },
            ),
            SizedBox(height: 10),

            CheckboxListTile( //多选框和ListTile结合
              value: this.flag,
              onChanged: (val){
                setState(() {
                 this.flag = val;
                });
              },
              title: Text("这是标题"),
              subtitle: Text("这是2级标题"),
              secondary: Icon(Icons.help),
            ),
            SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ //单选框 (选框要大于1个)
                Text("男:"),
                Radio(
                  value: 1,
                  groupValue: this.sex,
                  onChanged: (val){
                    setState(() {
                      this.sex = val; 
                    });
                  },
                ),
                SizedBox(width: 20),
                Text("女:"),
                Radio(
                  value: 2,
                  groupValue: this.sex,
                  onChanged: (val){
                    setState(() {
                      this.sex = val; 
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 10),

            RadioListTile(//单选框和ListTile结合(groupValue表示组)
              value: 1,
              groupValue: this.count,
              title: Text("标题"),
              subtitle: Text("子标题"),
              secondary: Icon(Icons.flag),
              selected: this.count == 1,
              onChanged: (val){
                setState(() {
                  this.count = val; 
                });
              },
            ),
            SizedBox(width: 20),
            RadioListTile(
              value: 2,
              groupValue: this.count,
              title: Text("标题"),
              subtitle: Text("子标题"),
              selected: this.count == 2,
              secondary: Icon(Icons.flag),
              onChanged: (val){
                setState(() {
                  this.count = val; 
                });
              },
            ),
            SizedBox(height: 10),

           Row(
             children: <Widget>[
              Switch( //开关
                value: this.flag,
                onChanged: (val){
                  this.flag = val;
                },
              ),
             ],
           )

          ],
        ),
      ),
    );
  }
}