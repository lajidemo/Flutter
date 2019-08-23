import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StackDemo();
  }
}

class PositionedDemo extends StatelessWidget {
  final double right;
  final double top;

  PositionedDemo(
    this.right,
    this.top,
  );

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: right,
      top: top,
      child: Icon(Icons.ac_unit,color: Colors.white,),
    );
  }
}

class StackDemo extends StatelessWidget { // 定位
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 300.0,
              child: Container(
                alignment: Alignment(0.5, 1.1), // 子内容的位置
                // child: Icon(Icons.phone,color: Colors.black,),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 100.0,
              child: Container(
                child: Icon(Icons.brightness_2,color: Colors.white,),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color.fromRGBO(7, 102, 255, 1.0),
                      Color.fromRGBO(3, 54, 255, 1.0),
                    ]
                  )
                ),
              ),
            ),
            PositionedDemo(10.0, 10.0),
            PositionedDemo(32.0, 94.0),
            PositionedDemo(99.0, 46.0),
            PositionedDemo(150.0, 70.0),
            PositionedDemo(100.0, 200.0),
            /* Positioned(
              right: 10.0,
              top: 10.0,
              child: Icon(Icons.ac_unit,color: Colors.white,),
            ),
            Positioned(
              right: 100.0,
              top: 200.0,
              child: Icon(Icons.ac_unit,color: Colors.white,),
            ), */
          ],
        ),
        SizedBox(
          height: 100,
        ),
        HttpDemo()
      ],
    );
  }
}


class HttpDemo extends StatefulWidget {
  @override
  _HttpDemoState createState() => _HttpDemoState();
}

class _HttpDemoState extends State<HttpDemo> {
  String showResult = '';
  Future<CommonModel> fetchPost() async { // 发送get请求
    final response = await http.get('http://www.devio.org/io/flutter_app/json/test_common_model.json');
    final result = json.decode(response.body);
    return CommonModel.fromJson(result);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: (){
            fetchPost().then((CommonModel val){
              setState(() {
                showResult =  'icon: ${val.icon}\n title: ${val.title}\n url: ${val.url}\n statusBarColor: ${val.statusBarColor}\n hideAppBar: ${val.hideAppBar}\n';
              });
            });
          },
          child: Text('data'),
        ),
        Text(showResult),
      ], 
    );
  }
}

class CommonModel { // 将json转为Map类，此方法为手动转，在json内容较为复杂时不便
  final String icon;
  final String title;
  final String url;
  final String statusBarColor;
  final bool hideAppBar;
  CommonModel({this.icon,this.title,this.url,this.statusBarColor,this.hideAppBar});
  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
      statusBarColor: json['statusBarColor'],
      hideAppBar: json['hideAppBar'],
    );
  }
}

class SizedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            alignment: Alignment(0.5, 1.1), // 子内容的位置
            child: Icon(Icons.phone,color: Colors.black,),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        SizedBox(height: 50.0,),
        SizedBox(
          width: 200.0,
          height: 100.0,
          child: Container(
            child: Icon(Icons.network_locked,color: Colors.white,),
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 1.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}

class ColumnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column( // 竖排(主轴是竖直方向，副轴是水平方向)
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴方向的对齐方式
      crossAxisAlignment: CrossAxisAlignment.end, // 副轴方向的对齐方式
      children: <Widget>[
        IconBadge(Icons.pool, size: 30,),
        IconBadge(Icons.public, size: 40,),
        IconBadge(Icons.phone, size: 50,),
      ],
    );
  }
}

class RowDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row( // 横排(主轴是水平方向，副轴是竖直方向)
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴方向的对齐方式
      crossAxisAlignment: CrossAxisAlignment.center, // 副轴方向的对齐方式
      children: <Widget>[
        IconBadge(Icons.pool, size: 30,),
        IconBadge(Icons.public, size: 40,),
        IconBadge(Icons.phone, size: 50,),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon,{ // {}: 可选参数，不用对应位置，[]方式需要对应位置
    this.size = 32.0 // 默认参数值
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}