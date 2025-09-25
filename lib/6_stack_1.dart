import 'package:flutter/material.dart';
void main()
{
  //pass object of class that extends stateLess class
  runApp(StackDemo1());
}
class StackDemo1 extends StatelessWidget {
  const StackDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              getContainer(300,300,Colors.amber), //Bottom most Container
              getContainer(200,200,Colors.red), //Bottom most Container
              getContainer(100,100,Colors.yellow), //Bottom most Container
              getContainer(50,50,Colors.deepPurple), //Bottom most Container
              // Container(
              //     height: 200,
              //     width: 200,
              //     color: Colors.blue,
              // ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.yellow,
              // ),
              // Container(
              //   height: 50,
              //   width: 50,
              //   color: Colors.red,
              // ),
            ],
          ),
        )
    );
  }
  Container getContainer(double h,double w, MaterialColor bgColor)
  {
    return Container(
        height: h,
        width: w,
        color: bgColor
    );
  }
}

