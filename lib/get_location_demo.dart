import 'dart:io';

import 'package:flutter/material.dart';
import 'package:location/location.dart';
// https://pub.dev/packages/location
class getUserLocation extends StatefulWidget {
  @override
  State<getUserLocation> createState() => _getUserLocationState();
}

class _getUserLocationState extends State<getUserLocation> {

  String myLocation = '';  // Picker instance
  Future<void> _getLastKnownLocation() async {

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Capture Image"),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.80,
          height: MediaQuery.of(context).size.height * 0.70,
          child: Padding(padding: EdgeInsets.all(10),
            child: Card(
              elevation: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(onPressed: ()  {
                      _getLastKnownLocation();
                  },
                      child: Text("Select Photo")
                  ),

                  FittedBox(child: Text("your location $myLocation"),)
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
