import 'package:flutter/material.dart';

void main()
{
  //pass object of class that extends stateLess class
  HelloWorld screen = new HelloWorld();
  runApp(screen);
}
class HelloWorld extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("the easylearn academy",
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        textScaleFactor: 3.0,),
    );
  }
}