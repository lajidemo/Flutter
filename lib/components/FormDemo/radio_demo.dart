import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioDemo = 0;
  void _handlRadioChange(int val){
    setState(() {
      _radioDemo = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Radio(
              value: 2,
              groupValue: _radioDemo,
              onChanged: _handlRadioChange,
              activeColor: Colors.blueAccent,
            ),
            SizedBox(height: 16.0,),
            Text('RadioVal: $_radioDemo'),
            SizedBox(height: 16.0,),
            RadioListTile(
              value: 0,
              groupValue: _radioDemo,
              onChanged: _handlRadioChange,
              activeColor: Colors.blueAccent,
              title: Text('Radio Item A'), // 标题
              subtitle: Text('Description'), // 描述
              secondary: Icon(Icons.filter_1), // Icon
              selected: _radioDemo == 0, // Icon的颜色是否跟随勾选状态改变
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioDemo,
              onChanged: _handlRadioChange,
              activeColor: Colors.blueAccent,
              title: Text('Radio Item B'), // 标题
              subtitle: Text('Description'), // 描述
              secondary: Icon(Icons.filter_2), // Icon
              selected: _radioDemo == 1, // Icon的颜色是否跟随勾选状态改变
            ),
            RadioListTile(
              value: 2,
              groupValue: _radioDemo,
              onChanged: _handlRadioChange,
              activeColor: Colors.blueAccent,
              title: Text('Radio Item C'), // 标题
              subtitle: Text('Description'), // 描述
              secondary: Icon(Icons.filter_3), // Icon
              selected: _radioDemo == 2, // Icon的颜色是否跟随勾选状态改变
            ),
          ],
        ),
      ),
    );
  }
}
