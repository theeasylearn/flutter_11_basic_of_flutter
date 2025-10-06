import 'package:flutter/material.dart';
class AspectRatioDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Aspect ratio"),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 3/2,
                      //child: Image.network('https://cdn.mos.cms.futurecdn.net/feoPSQYKh5R8vAJHQiKNni-1280-80.jpg.webp',fit: BoxFit.cover,),
                      child: Image.asset('images/woman.jpg',fit: BoxFit.cover,),
                    ),
                    Expanded(child: FittedBox(child: Text("the easylearn academy",
                      textAlign: TextAlign.center,
                      )))
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
