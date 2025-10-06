import 'package:flutter/material.dart';
class SizeboxDemo extends StatelessWidget {
  const SizeboxDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sizedbox demo, "),
          leading: Icon(Icons.account_box),
        ),
        body: Center(
          child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text("I am button The Easylearn"))),
        ),
      ),
    );
  }
}
