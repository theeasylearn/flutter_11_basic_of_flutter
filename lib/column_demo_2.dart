import 'package:flutter/material.dart';
class ColumnDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        padding: EdgeInsets.only(left:50,right: 50),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(height: 100,color: Colors.redAccent,),
            SizedBox(height: 20,),
            Container(height: 100,color: Colors.orange,),
            SizedBox(height: 20,),
            Container(height: 100,color: Colors.brown,),
            SizedBox(height: 20,),
            Container(height: 100,color: Colors.cyan,),
          ],
        ),
      ),
    );
  }
}
