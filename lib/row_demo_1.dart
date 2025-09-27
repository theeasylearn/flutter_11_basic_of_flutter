import 'package:flutter/material.dart';

class MyRowDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: Container(
          width: double.infinity,
          height: 100,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.edit,size: 60,color: Colors.white,),
              Icon(Icons.delete,size: 60,),
              Icon(Icons.heart_broken,size: 60,)
            ],
          ),
        ),
      ),
    );
  }
}
