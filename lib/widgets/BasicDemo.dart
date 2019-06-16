import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyContainer();
  }
}
///测试Text控件
class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'hhq',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30.0),
    );
  }
}

class MyRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: "123123",
          style: TextStyle(
              color: Colors.deepOrangeAccent,
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          children: [
            TextSpan(
              text: "NN!1",
              style: TextStyle(color: Colors.blue),
            ),
          ]),
    );
  }
}

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size:32.0, color:Colors.white),
            // color: Color.fromRGBO(3, 54, 255, 1),
            padding: EdgeInsets.all(24),
            margin: EdgeInsets.all(10),
            height: 90,
            width: 90,
            decoration: BoxDecoration(//修饰
              color: Color.fromRGBO(3, 54, 255, 1),//颜色
              border: new Border.all(
                color: Colors.red[100],
                width: 3.0,
                style: BorderStyle.solid
              ),
              borderRadius: BorderRadius.circular(16),//全部16圆角
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0,7.0),//阴影偏移位置
                  color: Color.fromRGBO(16, 20, 188, 1),//颜色
                  blurRadius: 3.0,//阴影模糊度
                  spreadRadius: 1//扩散
                ),
              ],
              // shape: BoxShape.circle//直接设置为圆形，鸡肋属性，不能先设置圆角，否则报错
            ),
          )
        ],
      ),
    );
  }
}
