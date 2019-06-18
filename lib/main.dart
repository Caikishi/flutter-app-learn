import 'package:flutter/material.dart';
import 'widgets/listImgesView.dart';
import 'widgets/layout_demo.dart';
import 'widgets/bottomNavigtion/bottomNavigtionDemo.dart';
import 'widgets/BasicDemo.dart';
import 'widgets/View_demo.dart';
import 'widgets/sliver_demo.dart';
import 'widgets/navigator_demo.dart';

void main() => runApp(App());

///App入口
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
        title: Text('主页'),
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
        bottom: TabBar(
          unselectedLabelColor: Colors.black38,
          indicatorColor: Colors.black54,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 2.0,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.local_florist),
            ),
            Tab(
              icon: Icon(Icons.change_history),
            ),
            Tab(
              icon: Icon(Icons.accessibility),
            ),
            Tab(
              icon: Icon(Icons.view_quilt),
            ),
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          ListImges(),
          BasicDemo(),
          LayoutDemo(),
          SliverDemo(),
        ],
      ),
      drawer: Container(
        width: 300,
        // height: 100,
        color: Colors.white,
        child: MyDrawerDemo(),
      ),
      bottomNavigationBar: BottomNavigationDemo()
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
              accountName: Text('huanghaiquan',style: TextStyle(fontWeight: FontWeight.bold),),
              accountEmail: Text('haiquan.huang411@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://p.ssl.qhimg.com/dmfd/400_300_/t010774c3ffd8c986a2.jpg'),
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



