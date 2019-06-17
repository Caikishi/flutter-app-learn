import 'package:flutter/material.dart';
import '../model/post.dart';

class ListImges extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      // color: Colors.yellow,
      margin: EdgeInsets.all(8),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imgUrl),
          SizedBox(
            height: 16,
          ),
          Text(posts[index].title, style: Theme.of(context).textTheme.title),
          Text(posts[index].author, style: Theme.of(context).textTheme.title),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
      cacheExtent: 10,
    );
  }
}

class TwitterListView extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      // color: Colors.yellow,
      margin: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
            color: Colors.yellow,
              shape: BoxShape.circle
            ),
            child: Image.network(posts[index].imgUrl),
          ),
          Column(
            children: <Widget>[
              // Image.network(posts[index].imgUrl),
              SizedBox(
                height: 16,
              ),
              Text(posts[index].title,
                  style: Theme.of(context).textTheme.title),
              Text(posts[index].author,
                  style: Theme.of(context).textTheme.title),
              SizedBox(
                height: 16,
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: posts.length,
      itemBuilder: _listItemBuilder,
      cacheExtent: 10,
    );
  }
}
