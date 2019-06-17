import 'package:flutter/material.dart';
import 'package:my_app/model/post.dart';

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverAppBar(
            // title: Text("WWW"),
            // pinned: true, //appbar不消失
            // floating: true,//向下滚动时立刻出现appbar
            // expandedHeight: 170,
            // flexibleSpace: FlexibleSpaceBar(
            //   title: Text(
            //     "wweqeq".toUpperCase(),
            //     style: TextStyle(
            //       fontSize: 15.0,
            //       letterSpacing: 3.0,
            //       fontWeight: FontWeight.w400,
            //     ),
            //   ),
            // ),
          // ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: SliverGridDemo(),
            ),
          ),
        ],
      ),
    );
  }
}

class SliverGridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1.0),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Image.network(
            posts[index].imgUrl,
          ),
        );
      }, childCount: posts.length),
    );
  }
}

class SliverListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.yellow,
            border: new Border.all(
              color: Colors.red[100],
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
          child: Image.network(
            posts[index].imgUrl,
          ),
        );
      }, childCount: posts.length),
    );
  }
}
