import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var stack = new Stack(
      alignment: FractionalOffset(0.5, 0.8),
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('https://cdn.jsdelivr.net/gh/flutterchina/flutter-in-action@1.0/docs/imgs/book.jpg'),
          radius: 100.0,
        ),
        /* new Container(
          child: new Text('庄嘉仁最屌！！！',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 20.0,
            ),
          ),
          padding: EdgeInsets.all(5.0),
          decoration: new BoxDecoration(
            color: Colors.amber,
          ),
        ) */
        new Positioned( // 固定定位
          top: 10.0,
          left: 10.0,
          child: Text('怎么还不回来啊'),
        ),
        /* new Positioned(
          bottom: 10.0,
          right: 10.0,
          child: Text('快回来啊'),
        ), */
      ],
    );
    return MaterialApp(
      title: 'ZJR-NB',
      home: Scaffold(
        appBar: new AppBar(title: new Text('布局'),),
        body: Center(
          child: stack,
        ),
      ),
    );
  }
}

