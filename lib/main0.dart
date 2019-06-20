import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        body: Center(
          child: Container(
            /* child: Text('我的第一个Flutter代码',style: TextStyle(fontSize: 20.0),),
            width: 500.0,
            height: 400.0,
            // color: Colors.grey[300],
            // alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.fromLTRB(10.0,100.0,0,0),
            margin: const EdgeInsets.all(10.0),
            decoration: new BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.lightBlue,Colors.greenAccent,Colors.purpleAccent]
              ),
              border: Border.all(width: 2.0,color: Colors.red)
            ), */
            child: new Image.network(
              'https://i0.hdslb.com/bfs/face/c81969907b5c286b50d02400e7d54b13595f09bb.jpg',
              fit: BoxFit.scaleDown,
              color: Colors.pink,
              colorBlendMode: BlendMode.modulate,
              repeat: ImageRepeat.repeat,
            ),
            width: 300.0,
            height: 200.0,
            decoration: new BoxDecoration(
              border: Border.all(width: 2.0,color: Colors.blueAccent),
            )
          )
        ),
      ),
    );
  }
}