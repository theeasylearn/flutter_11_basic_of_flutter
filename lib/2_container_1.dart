import 'package:flutter/material.dart';

void main()
{
  //pass object of class that extends stateLess class
  ContainerDemo screen = new ContainerDemo();
  runApp(screen);
}
class ContainerDemo extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
          child: Container(
            height: 100,
            width: 200,
            alignment: Alignment.bottomLeft,
            padding:  EdgeInsets.only(left: 10,bottom: 20,top:0,right: 0),
            color: Colors.yellow,
            child: Text("Flutter 11",
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.green
              ),),
          )
      ),
    );
  }
}