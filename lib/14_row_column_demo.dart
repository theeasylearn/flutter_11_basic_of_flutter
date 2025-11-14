import 'package:flutter/material.dart';
class RowColumnDemo1 extends StatelessWidget {
  const RowColumnDemo1({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: Container(

                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                        BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Shadow color with transparency
                        offset: const Offset(2,0), // Shadow displaced downward
                        blurRadius: 8.0, // Softens the shadow
                        spreadRadius: 2.0, // Extends shadow outward
                      ),
                    ],
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.blue,
                      width: 2
                    )
                ),
                height: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    showRow(),
                    showRow(),
                    showRow(),
                    showRow(),

                  ],
                ),
              ),
            ),
        ),
    );
  }

  Widget showButton() {
      return  Container(
        decoration: BoxDecoration(
          border: Border.all(
              width: 1,
              color: Colors.black,
              style: BorderStyle.solid
          )
        ),
        child: IconButton(onPressed: () {
          print("button clicked...");
        }, icon: const Icon(Icons.minimize),

        ),
      );
  }

  Widget showRow() {
      return  Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          showButton(),
          showButton(),
          showButton(),
          showButton()
        ],
      );
  }
}
