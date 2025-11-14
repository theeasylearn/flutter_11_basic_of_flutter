import 'package:flutter/material.dart';
void main()
{
  //pass object of class that extends stateless class
  AlignDemo ad1 = const AlignDemo();
  runApp(ad1);
}
class AlignDemo extends StatelessWidget {
  const AlignDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: const BoxDecoration(
            color: Colors.yellow,
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child:FlutterLogo (
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
