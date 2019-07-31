import 'package:flutter/material.dart';

class PopupMenuBtnDemo extends StatefulWidget { // 弹出菜单
  @override
  _PopupMenuBtnDemoState createState() => _PopupMenuBtnDemoState();
}

class _PopupMenuBtnDemoState extends State<PopupMenuBtnDemo> {
  String _currentMenuItem = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuBtnDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_currentMenuItem),
            PopupMenuButton(
              onSelected: (val){ // 获取选中的值，需在PopupMenuItem中设置value才有值
                print(val);
                setState(() {
                  _currentMenuItem = val;
                });
              },
              itemBuilder: (BuildContext context) => [ // 构建弹出菜单的选项内容
                PopupMenuItem(
                  value: 'Home',
                  child: Text('Home'),
                ),
                PopupMenuItem(
                  value: 'About',
                  child: Text('About'),
                ),
                PopupMenuItem(
                  value: 'Join',
                  child: Text('Join'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}