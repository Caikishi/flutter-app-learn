import 'package:flutter/material.dart';
import 'widgets/listImgesView.dart';
import 'widgets/bottomNavigtion/bottomNavigtionDemo.dart';
import 'widgets/BasicDemo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
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
      length: 3,
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
        title: Text('NINGHAO'),
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
        elevation: 30.0,
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
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          ListImges(),
          BasicDemo(),
          Icon(
            Icons.accessibility,
            size: 128,
            color: Colors.black12,
          ),
        ],
      ),
      drawer: Drawer(
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
                color: Colors.yellow[400],
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.yellow[400], 
                    BlendMode.modulate
                    ),
                  image: NetworkImage('https://resources.ninghao.org/images/childhood-in-a-picture.jpg')
                ),
              ),

            ),
            ListTile(
              title: Text(
                'Messages',
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.message,
                color: Colors.black12,
                size: 22.0,
              ),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                'Favorite',
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.favorite,
                color: Colors.black12,
                size: 22.0,
              ),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                'Settings',
                textAlign: TextAlign.right,
              ),
              trailing: Icon(
                Icons.settings,
                color: Colors.black12,
                size: 22.0,
              ),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationDemo()
    );
  }
}
