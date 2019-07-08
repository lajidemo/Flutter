import 'package:flutter/material.dart';
import '../model/post.dart';

class ViewDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GridViewBuilderDemo();
  }
}

class GridViewBuilderDemo extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index){
    return Container(
      child: Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _gridItemBuilder,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        childAspectRatio: 0.5,
      ),
    );
  }
}

class GridViewExtentDemo extends StatelessWidget {
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text('item$index', style: TextStyle(fontSize: 18.0)),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 150.0, // 副轴方向子内容的最大宽度
      crossAxisSpacing: 16.0, // 副轴方向间距
      mainAxisSpacing: 16.0, // 主轴方向(滚动方向)间距
      // scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class GridViewCountDemo extends StatelessWidget { // 网格视图
  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index) {
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0, 0.0),
          child: Text('item$index', style: TextStyle(fontSize: 18.0)),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3, // 个数
      crossAxisSpacing: 16.0, // 副轴方向间距
      mainAxisSpacing: 16.0, // 主轴方向(滚动方向)间距
      scrollDirection: Axis.horizontal,
      children: _buildTiles(100),
    );
  }
}

class PageViewBuilderDemo extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context,int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(posts[index].author),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: posts.length,
      itemBuilder: _pageItemBuilder,
    );
  }
}

class PageViewDemo extends StatelessWidget { // 类似于swiper
  @override
  Widget build(BuildContext context) {
    return PageView(
      // pageSnapping: false, // 是否检测整块滑动
      // reverse: true, // 倒置
      scrollDirection: Axis.vertical, // 滚动方向
      onPageChanged: (index) => debugPrint('page: $index'), // 滚动时的回调
      controller: PageController(
        initialPage: 1, // 默认显示第几页
        keepPage: false, // 是否记录滚动到第几页
        viewportFraction: 0.85, // 相对于整个区块所占比例
      ),
      children: <Widget>[
        Container(
          color: Colors.brown[900],
          alignment: Alignment(0.0, 0.0),
          child: Text('ONE',style: TextStyle(color: Colors.white,fontSize: 32.0,),),
        ),
        Container(
          color: Colors.grey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text('TOW',style: TextStyle(color: Colors.white,fontSize: 32.0,),),
        ),
        Container(
          color: Colors.blueGrey[900],
          alignment: Alignment(0.0, 0.0),
          child: Text('THREE',style: TextStyle(color: Colors.white,fontSize: 32.0,),),
        ),
      ],
    );
  }
}