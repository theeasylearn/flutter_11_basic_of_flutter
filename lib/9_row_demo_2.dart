import 'package:flutter/material.dart';
class MyRowDemo2 extends StatelessWidget {
  const MyRowDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star,size: 60,),
                  Icon(Icons.star,size: 60,)
                ],),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star,size: 60,),
                  Icon(Icons.star,size: 60,),
                  Icon(Icons.star,size: 60,),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
