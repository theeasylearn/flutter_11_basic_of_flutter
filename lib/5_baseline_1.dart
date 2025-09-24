import 'package:flutter/material.dart';

void main()
{
  //pass object of class that extends stateLess class
  runApp(BaseLine1());
}
class BaseLine1 extends StatelessWidget {
  const BaseLine1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.indigoAccent,
          alignment: Alignment.topCenter,
          child: Baseline(
            baseline: 350,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}

