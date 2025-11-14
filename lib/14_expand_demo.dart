import 'package:flutter/material.dart';
class ExpandDemo1 extends StatelessWidget {
  const ExpandDemo1({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                flex: 3,
                child: ElevatedButton(onPressed: (){
                  print("Button Clicked...");
                }, child: const Text("Buy now")),
              ),
              Expanded(
                flex: 2,
                child: ElevatedButton(onPressed: (){

                }, child: const Text("Add to cart")),
              ),
              Expanded(
                  flex: 1,
                  child: ElevatedButton(onPressed: () {},
                      child: const Text("Wishlist")))
            ],
          ),
      ),
    );
  }
}
