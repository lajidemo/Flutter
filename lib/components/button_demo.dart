import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget flatBtnDemo = Row( // 不填充的按钮
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Button'),
          onPressed: (){}, // 当值为null时，按钮为禁用状态
          splashColor: Colors.greenAccent, // 溅墨的颜色
          textColor: Theme.of(context).accentColor,
        ),
        FlatButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: (){}, // 当值为null时，按钮为禁用状态
          splashColor: Colors.greenAccent, // 溅墨的颜色
          textColor: Theme.of(context).accentColor,
        ),
      ],
    );
    final Widget raisedBtnDemo = Row( // 填充的按钮
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme( // 定义按钮的主题
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0)
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: RaisedButton(
            child: Text('Button'),
            onPressed: (){}, // 当值为null时，按钮为禁用状态
            splashColor: Colors.greenAccent, // 溅墨的颜色
            elevation: 0.0,
          ),
        ),
        SizedBox(width: 16.0,),
        RaisedButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: (){}, // 当值为null时，按钮为禁用状态
          splashColor: Colors.greenAccent, // 溅墨的颜色
          textColor: Colors.pink,
          // textTheme: ButtonTextTheme.primary,
          color: Theme.of(context).accentColor,
          elevation: 12.0,
        ),
      ],
    );
    final Widget outlineBtnDemo = Row( // 带边框的按钮
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Theme( // 定义按钮的主题
          data: Theme.of(context).copyWith(
            buttonColor: Theme.of(context).accentColor,
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              // shape: BeveledRectangleBorder(
              //   borderRadius: BorderRadius.circular(5.0)
              // ),
              shape: StadiumBorder(),
            ),
          ),
          child: OutlineButton(
            child: Text('Button'),
            borderSide: BorderSide(
              color: Colors.black,
            ),
            highlightedBorderColor: Colors.cyan, // 高亮情况下即点击时的颜色
            onPressed: (){}, // 当值为null时，按钮为禁用状态
            splashColor: Colors.greenAccent, // 溅墨的颜色
          ),
        ),
        SizedBox(width: 16.0,),
        OutlineButton.icon(
          icon: Icon(Icons.add),
          label: Text('Button'),
          onPressed: (){}, // 当值为null时，按钮为禁用状态
          splashColor: Colors.greenAccent, // 溅墨的颜色
          textColor: Colors.pink,
          // textTheme: ButtonTextTheme.primary,
          color: Theme.of(context).accentColor,
        ),
      ],
    );
    final Widget expandedBtnDemo = Row( // 按钮占满可用空间
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Theme(
              data: Theme.of(context).copyWith(
                buttonTheme: ButtonThemeData( // 改变默认的按钮边距
                  padding: EdgeInsets.symmetric(horizontal: 32.0),
                )
              ),
              child: ButtonBar( // 自带边距的btn集合
                children: <Widget>[ 
                  OutlineButton(
                    child: Text('Button'),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    highlightedBorderColor: Colors.cyan, // 高亮情况下即点击时的颜色
                    onPressed: (){}, // 当值为null时，按钮为禁用状态
                    splashColor: Colors.greenAccent, // 溅墨的颜色
                  ),
                  OutlineButton(
                    child: Text('Button'),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                    highlightedBorderColor: Colors.cyan, // 高亮情况下即点击时的颜色
                    onPressed: (){}, // 当值为null时，按钮为禁用状态
                    splashColor: Colors.greenAccent, // 溅墨的颜色
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
    final Widget buttonBarDemo = Row( // 按钮占满可用空间
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded( // 占满可用空间的组件
          child: OutlineButton(
            child: Text('Button'),
            borderSide: BorderSide(
              color: Colors.black,
            ),
            highlightedBorderColor: Colors.cyan, // 高亮情况下即点击时的颜色
            onPressed: (){}, // 当值为null时，按钮为禁用状态
            splashColor: Colors.greenAccent, // 溅墨的颜色
          ),
        ),
        SizedBox(width: 16.0,),
        Expanded( // 多个时会自算平分
          child: OutlineButton(
            child: Text('Button'),
            borderSide: BorderSide(
              color: Colors.black,
            ),
            highlightedBorderColor: Colors.cyan, // 高亮情况下即点击时的颜色
            onPressed: (){}, // 当值为null时，按钮为禁用状态
            splashColor: Colors.greenAccent, // 溅墨的颜色
          ),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            flatBtnDemo,
            raisedBtnDemo,
            outlineBtnDemo,
            expandedBtnDemo,
            buttonBarDemo,
          ],
        ),
      ),
    );
  }
}


class FloatingActionBtnDemo extends StatelessWidget { // 浮动的按钮
  @override
  Widget build(BuildContext context) {
    final Widget _FloatingActionBtn = FloatingActionButton(
      onPressed: (){},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder( // 设置形状
      //   borderRadius: BorderRadius.circular(32.0)
      // ),
    );
    final Widget _FloatingActionBtnExtend = FloatingActionButton.extended(
      onPressed: (){},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionBtnDemo'),
        elevation: 0.0,
      ),
      // floatingActionButton: _FloatingActionBtnExtend,
      floatingActionButton: _FloatingActionBtn,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}