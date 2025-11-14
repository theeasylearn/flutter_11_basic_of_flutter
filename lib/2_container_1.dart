import 'package:flutter/material.dart';

void main()
{
  //pass object of class that extends stateLess class
  ContainerDemo screen = const ContainerDemo();
  runApp(screen);
}
class ContainerDemo extends StatelessWidget
{
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
          child: Container(
            height: 100,
            width: 200,
            alignment: Alignment.bottomLeft,
            padding:  const EdgeInsets.only(left: 10,bottom: 20,top:0,right: 0),
            color: Colors.yellow,
            child: const Text("Flutter 11",
              style: TextStyle(
                  fontSize: 36,
                  color: Colors.green
              ),),
          )
      ),
    );
  }
}