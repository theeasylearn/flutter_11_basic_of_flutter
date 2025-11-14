import 'package:flutter/material.dart';

void main()
{
  //pass object of class that extends stateLess class
  HelloWorld screen = const HelloWorld();
  runApp(screen);
}
class HelloWorld extends StatelessWidget
{
  const HelloWorld({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("the easylearn academy",
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
        textScaleFactor: 3.0,),
    );
  }
}