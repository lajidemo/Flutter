import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _SliderDemo = 0.0;
  void _handlRadioChange(double val){
    setState(() {
      _SliderDemo = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              value: _SliderDemo,
              onChanged: _handlRadioChange,
              activeColor: Colors.blueAccent,
              inactiveColor: Colors.blueAccent.withOpacity(0.3),
              min: 0.0,
              max: 10.0,
              divisions: 10,
              label: '${_SliderDemo.toInt()}',
            ),
            SizedBox(height: 16.0,),
            Text('SliderVal: $_SliderDemo'),
            SizedBox(height: 16.0,),
          ],
        ),
      ),
    );
  }
}
