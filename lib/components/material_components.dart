import 'package:flutter/material.dart';
import 'package:hello_world/components/FormDemo/button_demo.dart';
import 'package:hello_world/components/FormDemo/checkbox_demo.dart';
import 'package:hello_world/components/FormDemo/datetime_demo.dart';
import 'package:hello_world/components/FormDemo/form_demo.dart';
import 'package:hello_world/components/FormDemo/popup_menu_btn_demo.dart';
import 'package:hello_world/components/FormDemo/radio_demo.dart';
import 'package:hello_world/components/FormDemo/slider_demo.dart';
import 'package:hello_world/components/FormDemo/switch_demo.dart';

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
          ListItem(title: 'DateTimeDemo', page: DateTimeDemo()),
          ListItem(title: 'SliderDemo', page: SliderDemo()),
          ListItem(title: 'SwitchDemo', page: SwitchDemo()),
          ListItem(title: 'RadioDemo', page: RadioDemo()),
          ListItem(title: 'CheckboxDemo', page: CheckboxDemo()),
          ListItem(title: 'FormDemo', page: FormDemo()),
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