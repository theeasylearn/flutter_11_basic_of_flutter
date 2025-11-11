import 'package:flutter/material.dart';
class MySliverDemo1 extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: CustomScrollView(
            slivers: [
               SliverList(delegate: SliverChildBuilderDelegate((context,index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 100,
                      child: Card(
                        elevation: 10,
                        child: Text("Pav bhaji",style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                              ),),
                      ),
                    ),
                  );
               },
                   childCount: 20))
            ],
          ),
        ),
    );
  }
}
