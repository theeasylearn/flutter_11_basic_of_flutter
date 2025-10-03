import 'package:flutter/material.dart';
class ExpandDemo1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: ElevatedButton(onPressed: (){
                  print("Button Clicked...");
                }, child: Text("Buy now")),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(onPressed: (){

                }, child: Text("Add to cart")),
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(onPressed: () {},
                      child: Text("Wishlist")))
            ],
          ),
      ),
    );
  }
}
