import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget {
  @override
  _BottomNavigationDemoState createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    setState(() => this._currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.explore), title: Text('Explore')),
        BottomNavigationBarItem(
            icon: Icon(Icons.history), title: Text('History')),
        BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('List')),
        BottomNavigationBarItem(
            icon: Icon(Icons.person), title: Text('Person')),
      ],
    );
  }
}
