import 'package:flutter/material.dart';
class wrapDemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Wrap demo", /* optional */
      home: Scaffold(
        appBar: AppBar(
          title: Text("Wrap Demo"),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                showImage('images/cat.jpg'),
                showImage('images/cat1.jpg'),
                showImage('images/cat2.jpg'),
                showImage('images/cat.jpg'),
                showImage('images/cat1.jpg'),
                showImage('images/cat2.jpg'),
                showImage('images/cat.jpg'),
                showImage('images/cat1.jpg'),
                showImage('images/cat2.jpg'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget showImage(String imagePath) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(imagePath,height: 200,width: 200,fit: BoxFit.cover),
      );
  }
}
