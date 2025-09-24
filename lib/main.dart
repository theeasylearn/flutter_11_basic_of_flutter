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
          children: [],
        ),
        )
      ),
    );
  }
}

