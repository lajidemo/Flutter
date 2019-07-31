import 'package:flutter/material.dart';
import 'package:hello_world/components/button_demo.dart';
import 'package:hello_world/components/popup_menu_btn_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(title: 'PopupMenuBtnDemo', page: PopupMenuBtnDemo()),
          ListItem(title: 'ButtonDemo', page: ButtonDemo()),
          ListItem(title: 'FloatingActionBtn', page: FloatingActionBtnDemo()),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}