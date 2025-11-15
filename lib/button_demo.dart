import 'package:flutter/material.dart';
class ButtonDemo1 extends StatefulWidget {

  @override
  State<ButtonDemo1> createState() => _ButtonDemo1State();
}

class _ButtonDemo1State extends State<ButtonDemo1> {
  int count = 0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Button Demo"),
        ),
        body: Center(
            child: Column(
              children: [
                ElevatedButton(onPressed: () {
                    // count = count  + 1; it will not updated widget which use count variable
                    setState(() {
                      count = count  + 1; //
                    });
                    print("count = $count");
                }, child: Text("increase count ")),
                Text("count = $count",style: TextStyle(
                  fontSize: 20
                ),
                textAlign: TextAlign.center,
                ),
              ],
            ),

        ),
      ),
    );
  }
}
