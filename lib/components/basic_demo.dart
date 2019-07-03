import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BoxDecorationDemo();
  }
}

class BoxDecorationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage( // 设置背景图片
          image: NetworkImage('https://resources.ninghao.org/images/free_hugs.jpg'),
          fit: BoxFit.cover,
          // repeat: ImageRepeat.repeat,
          colorFilter: ColorFilter.mode( // 颜色滤镜
            Colors.indigoAccent[400].withOpacity(0.5),
            BlendMode.hue,
          ),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 主轴居中
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white,),
            // color: Color.fromRGBO(154, 54, 255, 0.9),
            // padding: EdgeInsets.only(left: 5.0, top: 10.0, right: 15.0, bottom: 20.0),
            padding: EdgeInsets.all(10.0), // 不设宽高时，会将padding大小添加到宽高上，设置宽高后，padding大小算在宽高里
            margin: EdgeInsets.all(8.0),
            width: 200.0,
            height: 200.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(3, 54, 255, 0.9),
              /* border: Border(
                top: BorderSide(
                  color: Colors.tealAccent,
                  width: 5.0,
                  style: BorderStyle.solid,
                ),
                bottom: BorderSide(
                  color: Colors.amberAccent,
                  width: 5.0,
                  style: BorderStyle.solid,
                ),
              ), */
              border: Border.all( // 同padding
                color: Colors.amberAccent,
                width: 5.0,
                style: BorderStyle.solid,
              ),
              // borderRadius: BorderRadius.circular(16.0),
              boxShadow: [
                BoxShadow(
                  offset: Offset(10.0, 10.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 10.0, // 模糊值（偏移量为0，不设置扩散度，设置模糊值，可达到立体阴影效果）
                  spreadRadius: -5.0, // 阴影扩散程度（可为负数）
                ),
                BoxShadow(
                  offset: Offset(-10.0, -10.0),
                  color: Color.fromRGBO(16, 20, 188, 1.0),
                  blurRadius: 10.0, // 模糊值（偏移量为0，不设置扩散度，设置模糊值，可达到立体阴影效果）
                  spreadRadius: -5.0, // 阴影扩散程度（可为负数）
                ),
              ],
              shape: BoxShape.circle, // 设置box形状(circle不能跟borderRadius同时存在)
              /* gradient: RadialGradient( // 径向渐变
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ]
              ), */
              gradient: LinearGradient( // 线性渐变
                colors: [
                  Color.fromRGBO(200, 12, 255, 1.0),
                  Color.fromRGBO(3, 28, 128, 1.0),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText( // 一段文字有不同样式
      text: TextSpan(
        text: 'ZhuangJR',
        style: TextStyle(
          color: Colors.deepPurpleAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: '.web',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
            )
          ),
        ]
      ),
    );
  }
}