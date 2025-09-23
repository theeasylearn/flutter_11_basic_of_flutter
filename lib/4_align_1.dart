import 'package:flutter/material.dart';

void main()
{
  //pass object of class that extends stateLess class
  AlignDemo ad1 = new AlignDemo();
  runApp(ad1);
}
class AlignDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          height: 300,
          width: 300,
          child: Align(
            alignment: Alignment.centerLeft,
            child:FlutterLogo (
              size: 100,
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
