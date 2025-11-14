import 'package:flutter/material.dart';

class MyResponsiveDesign_1 extends StatelessWidget {
  const MyResponsiveDesign_1({super.key});


  @override
  Widget build(BuildContext context) {
      return MaterialApp(
         home: Scaffold(
           appBar: AppBar(
              title: const Text("Responsive design"),
             
           ),
           body: LayoutBuilder(builder: (context,Screen){
              if (Screen.maxWidth>600) {
                return DesignForBigScreen(Screen);
              } else {
                return DesignForMobileScreen(Screen);
              }
           }),
         ),
      );
  }

  Widget DesignForBigScreen(BoxConstraints screen) {
      print("design for big screen method called");
      return Row(
          children: [
              Container(
                height: screen.maxHeight,
                width: screen.maxWidth * 0.30,
                color: Colors.grey,
              ),
              Column(
                children: [
                  Container(
                    height: screen.maxHeight * 0.20,
                    width: screen.maxWidth - screen.maxWidth * 0.30,
                    color: Colors.red,
                  ),
                  Container(
                    height: screen.maxHeight * 0.30,
                    width: screen.maxWidth - screen.maxWidth * 0.30,
                    color: Colors.blue,
                  ),
                  Container(
                    height: screen.maxHeight * 0.50,
                    width: screen.maxWidth - screen.maxWidth * 0.30,
                    color: Colors.cyanAccent,
                  ),
                ],
              )
          ],
      );
  }

  Widget DesignForMobileScreen(BoxConstraints screen) {
      return Column(
          children: [
              Container(
                height: screen.maxHeight * 0.25,
                color: Colors.blue,
              ),
              Container(
                height: screen.maxHeight * 0.40,
                color: Colors.red,
              ),
              Container(
                height: screen.maxHeight * 0.35,
                color: Colors.yellow,
              )
          ],
      );
  }

}
