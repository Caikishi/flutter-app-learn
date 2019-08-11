import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Home'),
              onPressed: () => Navigator.pushNamed(context, '/home'),
            ),
            FlatButton(
              child: Text('About'),
              onPressed: (){
                ///指定路由名称
                Navigator.pushNamed(context, '/about');
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => NavigatorPage(title: 'About',)
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}


class NavigatorPage extends StatelessWidget{
  final String title;

  NavigatorPage({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromRGBO(251, 66, 117, 1),
        child: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}