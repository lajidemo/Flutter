import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZJR-NB',
      home: Scaffold(
        appBar: new AppBar(title: new Text('布局'),),
        body: new Row(
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
            /* new RaisedButton(
              onPressed: (){},
              color: Colors.blueGrey,
              child: Text('blueGrey'),
            ), */
          ],
        )
      ),
    );
  }
}

