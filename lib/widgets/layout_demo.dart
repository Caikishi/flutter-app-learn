import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          IconBadge(
            Icons.pool,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            width: 150,
            height: 150,
            child: Container(
              color: Colors.green,
              width: 50,
              height: 30,
              child: Container(),
            ),
          ),
          IconBadge(
            Icons.airplanemode_active,
          ),
        ],
      ),
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        size: size,
        color: Colors.white,
      ),
      width: size + 13,
      height: size + 13,
      color: Color.fromRGBO(3, 54, 255, 1),
    );
  }
}
