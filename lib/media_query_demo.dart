import 'package:flutter/material.dart';
class MediaQueryDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size;
    size = MediaQuery.of(context).size; //return size of screen
    var ScreenHalf = size.height / 2;
    var FullScreenWidth = size.width;
    return MaterialApp(
        home: Column(
          children: [
             Container(
               height: ScreenHalf,
               width: FullScreenWidth,
               color: Colors.red,
             ),
            Container(
              height: ScreenHalf,
              width: FullScreenWidth,
              color: Colors.yellow,
            ),
          ],
        ),
    );
  }
}
