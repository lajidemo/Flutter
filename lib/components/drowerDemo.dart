import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            /* DrawerHeader( // 抽屉头部方法一
              child: Text('header'.toUpperCase()),
              decoration: BoxDecoration(color: Colors.grey[100]),
            ), */
            UserAccountsDrawerHeader( // 抽屉头部方法二
              accountName: Text('ZhuangJR', style: TextStyle(fontWeight: FontWeight.bold,),),
              accountEmail: Text('zjr941016@163.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://mirror-gold-cdn.xitu.io/168e095840ec95e1e0f?imageView2/1/w/180/h/180/q/85/format/webp/interlace/1'),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow[200],
                image: DecorationImage(
                  image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6), 
                    BlendMode.hardLight,
                  ),
                )
              ),
            ),
            ListTile(
              title: Text('Messages',textAlign: TextAlign.right,),
              leading: Icon(Icons.message,color: Colors.black12,size: 22.0,), // 左边显示
              trailing: Icon(Icons.message,color: Colors.black12,size: 22.0,), // 右边显示
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Favorite',textAlign: TextAlign.right,),
              leading: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),
              trailing: Icon(Icons.favorite,color: Colors.black12,size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Settings',textAlign: TextAlign.right,),
              leading: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
              trailing: Icon(Icons.settings,color: Colors.black12,size: 22.0,),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}