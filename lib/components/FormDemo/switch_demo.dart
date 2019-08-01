import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _SwitchDemo = false;
  void _handlRadioChange(bool val){
    setState(() {
      _SwitchDemo = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: _SwitchDemo,
              onChanged: _handlRadioChange,
              activeColor: Colors.blueAccent,
            ),
            SizedBox(height: 16.0,),
            Text('RadioVal: $_SwitchDemo'),
            SizedBox(height: 16.0,),
            SwitchListTile(
              value: _SwitchDemo,
              onChanged: _handlRadioChange,
              activeColor: Colors.blueAccent,
              title: Text('Switch Item A'), // 标题
              subtitle: Text('Description'), // 描述
              secondary: Icon(Icons.filter_1), // Icon
              selected: _SwitchDemo, // Icon的颜色是否跟随勾选状态改变
            ),
          ],
        ),
      ),
    );
  }
}
