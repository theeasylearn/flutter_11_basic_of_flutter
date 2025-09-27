import 'package:flutter/material.dart';
void main()
{
  //pass object of class that extends stateLess class
  runApp(StackDemo2());
}
class StackDemo2 extends StatelessWidget {
  const StackDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
          child: Container(
            height: 400,
            width: 450,
            color: Colors.cyanAccent,
            child: Stack(
              children: [
                //1st row
                Positioned(
                  top:25,left: 25,
                  child: Container(height: 100,width: 100,
                    color: Colors.grey,),),
                Positioned(
                  top:25,left: 175,
                  child: Container(height: 100,width: 100,
                    color: Colors.grey,),),
                Positioned(
                  top:25,left: 325,
                  child: Container(height: 100,width: 100,
                    color: Colors.grey,),),

                //2nd row
                Positioned(
                  top:150,left: 25,
                  child: Container(height: 100,width: 100,
                    color: Colors.grey,),),
                Positioned(
                  top:150,left: 175,
                  child: Container(height: 100,width: 100,
                    color: Colors.grey,),),
                Positioned(
                  top:150,left: 325,
                  child: Container(height: 100,width: 100,
                    color: Colors.grey,),),

                //3rd row
                Positioned(
                  top:275,left: 25,
                  child: Container(height: 100,width: 100,
                    color: Colors.grey,),),
                Positioned(
                  top:275,left: 175,
                  child: Container(height: 100,width: 100,
                    color: Colors.grey,),),
                Positioned(
                  top:275,left: 325,
                  child: Container(height: 100,width: 100,
                    color: Colors.grey,),),
              ],
            ),
          ),
        )
    );
  }

}

