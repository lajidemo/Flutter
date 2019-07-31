import 'package:flutter/material.dart';
import 'package:hello_world/components/basic_demo.dart';
import 'package:hello_world/components/bottom_navigation_bar_demo.dart';
import 'package:hello_world/components/drower_demo.dart';
import 'package:hello_world/components/form_demo.dart';
import 'package:hello_world/components/layout_demo.dart';
import 'package:hello_world/components/listview_demo.dart';
import 'package:hello_world/components/material_components.dart';
import 'package:hello_world/components/navigator_demo.dart';
import 'package:hello_world/components/sliver_demo.dart';
import 'package:hello_world/components/view_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '庄嘉仁',
      // home: Home(),
      // home: NavigatorDemo(),
      initialRoute: '/mdc',
      routes: {
        '/': (context) => Home(),
        '/about': (context) => Page(title: 'About'),
        '/form': (context) => FormDemo(),
        '/mdc': (context) => MaterialComponents(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow, // 主题颜色
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
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('ZhuangJR'),
          elevation: 30.0, // 头部阴影
          bottom: TabBar(
            unselectedLabelColor: Colors.black38, // 未激活的颜色
            indicatorColor: Colors.yellow[400], // 下划线激活的颜色
            indicatorSize: TabBarIndicatorSize.label, // 下划线激活的长度
            indicatorWeight: 2.0,  // 下划线激活的高度
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist),),
              Tab(icon: Icon(Icons.change_history),),
              Tab(icon: Icon(Icons.directions_bike),),
              Tab(icon: Icon(Icons.view_quilt),),
              Tab(icon: Icon(Icons.select_all),),
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
            ListViewDemo(),
            BasicDemo(),
            LayoutDemo(),
            ViewDemo(),
            SliverDemo(),
          ],
        ),
        // endDrawer: Text('this is drawer'), // 右边抽屉
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

