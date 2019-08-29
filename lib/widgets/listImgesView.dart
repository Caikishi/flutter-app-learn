import 'package:flutter/material.dart';
import 'package:my_app/widgets/post_show.dart';
import '../model/post.dart';
import 'post_show.dart';
import 'package:transparent_image/transparent_image.dart';

class ListImges extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    print(index);
    return Container(
      // color: Colors.yellow,
      margin: EdgeInsets.all(8),
      child: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(color: Colors.amber),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  // heightFactor: 300,
                                  // child: CircularProgressIndicator(),
                                ),
                                Center(
                                  child: FadeInImage.memoryNetwork(
                                    // height: 300,
                                    placeholder: kTransparentImage,
                                    image: posts[index].imageUrl,
                                  ),
                                ),
                              ],
                            ),
                            // color: Colors.amber,
                            // width: double.infinity,
                            // child: Center(
                            //   child: FadeInImage.memoryNetwork(
                            //     placeholder: kTransparentImage,
                            //     image: posts[index].imageUrl,
                            //   ),
                            // ),
                            // child: Image.network(posts[index].imageUrl),
                            // color: Colors.white,
                          ),
                        ),
                      ),
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
                  ),
                  Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Colors.pink.withOpacity(0.3),
                        highlightColor: Colors.white.withOpacity(0.1),
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PostShow(
                                    post: posts[index],
                                  )));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
    print(index);
    return Container(
      // color: Colors.yellow,
      margin: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration:
                BoxDecoration(color: Colors.yellow, shape: BoxShape.circle),
            child: Image.network(posts[index].imageUrl),
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
