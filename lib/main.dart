import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZJR-NB',
      home: Scaffold(
        appBar: new AppBar(title: new Text('NB-ZJR'),),
        body: new ListView(
          children: <Widget>[
            new ListTile(
              leading: new Icon(Icons.ac_unit),
              title: new Text('ac_unit'),
            ),
            new Image.network('https://jspang.com/images/Redux_index.png'),
            new Image.network('https://jspang.com/images/bilibili_count.jpg'),
            new Image.network('https://jspang.com/images/react16_image.png'),
            new Image.network('https://jspang.com/images/Flutter_shop.png'),
            new Image.network('https://jspang.com/images/Flutter_shop.png'),
            new Image.network('https://jspang.com/images/Flutter_shop.png'),
          ],
        ),
      ),
    );
  }
}