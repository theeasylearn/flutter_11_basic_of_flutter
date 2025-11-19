import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
class RadioVibrateDemo extends StatefulWidget {
  @override
  State<RadioVibrateDemo> createState() => _RadioVibrateDemoState();
}

class _RadioVibrateDemoState extends State<RadioVibrateDemo> {
  int vibrateDuration = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text("Radio & Vibrate demo",
              style: TextStyle(
                color: Colors.white
            ),),
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                  color: Colors.red.shade50,
                  height: MediaQuery.of(context).size.height * 0.60,
                  child: Card(
                      elevation: 10,
                      child: Padding(padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                            Text("Select vibration duraction"),
                            RadioListTile(
                                title: Text("half second"),
                                value: 500,
                                groupValue: vibrateDuration,
                                onChanged: (value) {
                                    this.setState(() {
                                        vibrateDuration = int.parse(value.toString());
                                    });
                                }),
                            RadioListTile(
                                title: Text("one second"),
                                value: 1000,
                                groupValue: vibrateDuration,
                                onChanged: (value) {
                                  this.setState(() {
                                    vibrateDuration = int.parse(value.toString());
                                  });
                                }
                            ),
                            MaterialButton(
                              color: Colors.red,
                              onPressed: (){
                              Vibration.vibrate(duration: vibrateDuration);
                            },child: Text("vibrate phone",
                            style: TextStyle(color: Colors.white),),)
                        ],
                      ),
                      ),

                  ),
              ),
            ),
          ),
        ),
    );
  }
}
