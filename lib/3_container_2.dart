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
          height: 200,
          width: double.infinity, /* full width */
          color: Colors.blue,
          alignment: Alignment.center,
          /* if we dont set alignment of parent then child widget height & width might not work
          means child widget will occupy full full height & width of parent */
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 300,
            color: Colors.yellow,
            child: const Text("T.E.L."),
          ),
        ),
      ),
    );
  }
}