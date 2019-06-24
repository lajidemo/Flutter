import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ZJR-NB',
      home: Scaffold(
        appBar: new AppBar(title: new Text('NB-ZJR'),),
        body: Container(
          // height: 400.0,
          /* child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              // new ListTile(
              //   leading: new Icon(Icons.ac_unit),
              //   title: new Text('ac_unit'),
              // ),
              new Container(
                width: 50.0,
                color: Colors.blueGrey,
              ), new Container(
                width: 100.0,
                color: Colors.deepOrange,
              ), new Container(
                width: 80.0,
                color: Colors.purple,
              ),new Container(
                width: 30.0,
                color: Colors.blueGrey,
              ),
            ],
          ), */
          child: MyList(
            lists: new List<String>.generate(100, (i) => 'item $i')
          ),
        ),
      ),
    );
  }
}

class MyList extends StatelessWidget{

  final List<String> lists;
  MyList({Key key, @required this.lists}):super(key:key);

  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: lists.length,
      itemBuilder: (context,index){
        return new ListTile(
          title: Text('${lists[index]}'),
          leading: Icon(Icons.adb),
        );
      },
    );
  }
}