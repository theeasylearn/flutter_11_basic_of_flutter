import 'package:flutter/material.dart';
class ColumnDemo4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
            Image.network("https://picsum.photos/400/300"),
            Expanded(child: Container(color: Colors.brown,))
        ],
      ),
    );
  }
}
