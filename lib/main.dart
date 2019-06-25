import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZJR-NB',
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('查看商品详情页'),),
      body: Center(
        child: RaisedButton(
          child: Text('点击查看商品详情'),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SecondScreen()
            ));
            // Navigator.replace(context,FirstScreen(),SecondScreen());
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('庄嘉仁的商品详情'),),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}