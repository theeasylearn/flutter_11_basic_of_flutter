import 'package:flutter/material.dart';
class CardDemo1 extends StatelessWidget {
  const CardDemo1({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10,top: 10),
        child: SizedBox(
            height: 300,
            child: Card(
              elevation: 10,
              child: Column(
                children: [
                    const ListTile(
                      title: Text("Apple macbook Air "),
                      subtitle: Text("world finest personal use laptop from apple"),
                      trailing: Icon(Icons.favorite),
                    ),
                    Image.network(
                        "https://cdn.mos.cms.futurecdn.net/feoPSQYKh5R8vAJHQiKNni-1280-80.jpg.webp",
                    width: double.infinity,
                    height: 300,fit: BoxFit.cover,),
                    const Text(" Apple 2025 MacBook Air (13-inch, Apple M4 chip with 10-core "
                        "CPU and 8-core GPU, 16GB Unified Memory, 256GB) - Midnight "),
                  OverflowBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                        MaterialButton(onPressed: () {},
                          color: Colors.blueAccent,
                          child: const Text("Add to cart",style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                        const SizedBox(width: 10,),
                       MaterialButton(onPressed: () {},
                       color: Colors.blueAccent, child:
                       const Text("Add to wishlist",
                         style: TextStyle(
                         color: Colors.white
                       ),),),
                      const SizedBox(width: 10,),
                    ],
                  )
                ],
              ),
            ),
        ),
      ),
    );
  }
}
