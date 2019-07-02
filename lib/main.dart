import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '庄嘉仁',
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), // 点击区域的颜色
        splashColor: Colors.white70, // 点击时水波纹的颜色
      ),
    );
  }  
}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('AppBar'),
          elevation: 30.0, // 头部阴影
          bottom: TabBar(
            unselectedLabelColor: Colors.black38, // 未激活的颜色
            indicatorColor: Colors.black54, // 下划线激活的颜色
            indicatorSize: TabBarIndicatorSize.label, // 下划线激活的长度
            indicatorWeight: 2.0,  // 下划线激活的高度
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),),
            ],
          ),
          /* leading: IconButton( // 头部左上角
            icon: Icon(Icons.menu),
            onPressed: () => debugPrint('哈哈哈哈，我是左上角~'),
            tooltip: 'menu',
          ), */
          actions: <Widget>[ // 头部右上角
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint('哈哈哈哈，我是右上角的搜索~'),
              tooltip: 'search',
            ),
            IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () => debugPrint('哈哈哈哈，我是右上角的更多~'),
              tooltip: 'more_horiz',
            ),
          ],
        ),
        body: TabBarView( // 配合TabBar使用
          children: <Widget>[
            Icon(Icons.local_florist,size: 128.0,color: Colors.black12,),
            Icon(Icons.change_history,size: 128.0,color: Colors.black12,),
            Icon(Icons.directions_bike,size: 128.0,color: Colors.black12,),
          ],
        ),
        // endDrawer: Text('this is drawer'), // 右边抽屉
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('header'.toUpperCase()),
                decoration: BoxDecoration(color: Colors.grey[100]),
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
      ),
    );
  }
}
