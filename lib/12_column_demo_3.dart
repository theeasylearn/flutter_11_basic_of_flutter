import 'package:flutter/material.dart';
class ColumnDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: 50, color: Colors.redAccent,),
              Container(height: 50, color: Colors.cyanAccent,)
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: 50, color: Colors.greenAccent,),
              Container(height: 50, color: Colors.blueAccent,)
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: 50, color: Colors.orangeAccent,),
              Container(height: 50, color: Colors.brown,)
            ],
          ),
        ],
      ),
    );
  }
}
