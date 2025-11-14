import 'package:flutter/material.dart';
class ColumnDemo2 extends StatelessWidget {
  const ColumnDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        padding: const EdgeInsets.only(left:50,right: 50),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Container(height: 100,color: Colors.redAccent,),
            const SizedBox(height: 20,),
            Container(height: 100,color: Colors.orange,),
            const SizedBox(height: 20,),
            Container(height: 100,color: Colors.brown,),
            const SizedBox(height: 20,),
            Container(height: 100,color: Colors.cyan,),
          ],
        ),
      ),
    );
  }
}
