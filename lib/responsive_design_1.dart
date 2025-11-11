import 'package:flutter/material.dart';

class MyResponsiveDesign_1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
         home: Scaffold(
           appBar: AppBar(
              title: Text("Responsive design"),
             
           ),
           body: LayoutBuilder(builder: (context,Screen){
              if (Screen.maxWidth>600)
                  return DesignForBigScreen();
              else
                  return DesignForMobileScreen(Screen);
           }),
         ),
      );
  }

  Widget DesignForBigScreen() {
      return Container();
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
