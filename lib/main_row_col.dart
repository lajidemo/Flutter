import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZJR-NB',
      home: Scaffold(
        appBar: new AppBar(title: new Text('布局'),),
        /* body: new Row( // 横向布局
          children: <Widget>[
             new RaisedButton(
                onPressed: (){},
                color: Colors.limeAccent,
                child: Text('limeAccent'),
              ),
            Expanded(
              child: new RaisedButton(
                onPressed: (){},
                color: Colors.blueGrey,
                child: Text('blueGrey'),
              ),
            ),
            new RaisedButton(
              onPressed: (){},
              color: Colors.limeAccent,
              child: Text('limeAccent'),
            ),
          ],
        ) */
        body: Center(
          child: Column( // 纵向布局
            crossAxisAlignment: CrossAxisAlignment.start, // 副轴方向
            mainAxisAlignment: MainAxisAlignment.center, // 主轴方向
            children: <Widget>[
              Text('啦啦啦啦啦'),
              Expanded(
                child: Text('我是卖报的小行家'),
              ),
              Text('咯咯咯咯咯'),
            ],
          ),
        )
      ),
    );
  }
}

