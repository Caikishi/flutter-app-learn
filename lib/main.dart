import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'widgets/listImgesView.dart';
// import 'widgets/layout_demo.dart';
// import 'widgets/bottomNavigtion/bottomNavigtionDemo.dart';
// import 'widgets/BasicDemo.dart';
// import 'widgets/View_demo.dart';
// import 'widgets/sliver_demo.dart';
// import 'widgets/navigator_demo.dart';
// import 'widgets/VideoApp.dart';

void main() => runApp(App());

///App入口
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // initialRoute: '/home',
      // routes: {
        // '/': (context) => NavigatorDemo(),
        // '/about': (context) => NavigatorPage(title: 'About'),
        // '/home': (context) => Home(),
      // },
      theme: ThemeData(
        // primarySwatch: Colors.yellow,
        primaryColor: Colors.redAccent,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

///调用本地资源图片
class TestImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.amber,
      child: SizedBox(
        width: 150,
        height: 150,
        child: Container(
          color: Colors.green,
          child: Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                color: Colors.yellowAccent,
                width: 50,
                height: 50,
              ),
              Text('测试'),
              Positioned(
                right: -10,
                top: -10,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent, shape: BoxShape.circle),
                  width: 50,
                  height: 50,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///测试ListViewDemo
class MyListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Image.network(
                "http://img.wxcha.com/file/201603/07/7ec4c7c1f7.jpg"),
            title: Text("测试1"),
            subtitle: Text("随便1"),
          ),
          ListTile(
            leading: Image.network(
                "http://img.wxcha.com/file/201603/07/7ec4c7c1f7.jpg"),
            title: Text("测试2"),
            subtitle: Text("随便2"),
          ),
          ListTile(
            leading: Image.network(
                "http://img.wxcha.com/file/201603/07/7ec4c7c1f7.jpg"),
            title: Text("测试3"),
            subtitle: Text("随便3"),
          ),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Page(),
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   tooltip: 'Navigration',
        //   onPressed: () => debugPrint('Navigration button is pressed.'),
        // ),
        title: Text('猫'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () => debugPrint('Search button is pressed.'),
          ),
          IconButton(
            icon: Icon(Icons.more_horiz),
            tooltip: 'horiz',
            onPressed: () => debugPrint('horiz button is pressed.'),
          ),
        ],
        elevation: 0,
        // bottom: TabBar(
        //   onTap: (index) {
        //     print(index);
        //   },
        //   unselectedLabelColor: Colors.black38,
        //   indicatorColor: Colors.black54,
        //   indicatorSize: TabBarIndicatorSize.tab,
        //   indicatorWeight: 2.0,
        //   tabs: <Widget>[
        //     Tab(
        //       icon: Icon(Icons.local_florist),
        //     ),
        //     Tab(
        //       icon: Icon(Icons.change_history),
        //     ),
        //     Tab(
        //       icon: Icon(Icons.accessibility),
        //     ),
        //     Tab(
        //       icon: Icon(Icons.view_quilt),
        //     ),
        //   ],
        // ),
      ),
      body: TabBarView(
        children: <Widget>[
          ListImges(),
          // TestImg(),
          // LayoutDemo(),
          // SliverDemo(),
        ],
      ),
      // drawer: Container(
      //   width: 300,
      //   // height: 100,
      //   color: Colors.white,
      //   child: MyDrawerDemo(),
      // ),
      // bottomNavigationBar: BottomNavigationDemo(),
    );
  }
}

class MyDrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text(
              'huanghaiquan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('haiquan.huang411@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://p.ssl.qhimg.com/dmfd/400_300_/t010774c3ffd8c986a2.jpg'),
            ),
            decoration: BoxDecoration(
                // color: Colors.yellow[400],

                ),
          ),
          ListTile(
            title: Text(
              '个人中心',
              textAlign: TextAlign.left,
            ),
            leading: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              '列表',
              textAlign: TextAlign.left,
            ),
            leading: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              '书签',
              textAlign: TextAlign.left,
            ),
            leading: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
