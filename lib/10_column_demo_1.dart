import 'package:flutter/material.dart';
class ColumnDemo1 extends StatelessWidget {
  const ColumnDemo1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(height: 100,color: Colors.redAccent,),
          Container(height: 100,color: Colors.orange,),
          Container(height: 100,color: Colors.brown,),
          Container(height: 100,color: Colors.cyan,),
        ],
      ),
    );
  }
}
