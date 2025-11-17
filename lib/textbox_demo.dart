//Interest Calculator
import 'package:flutter/material.dart';
//create class that extends Statefulwidget
class TextboxDemo extends StatefulWidget {
  @override
  State<TextboxDemo> createState() => _TextboxDemoState();
}

class _TextboxDemoState extends State<TextboxDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.from(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.brown)),
        home: Scaffold(
          backgroundColor: const Color(0xFFFFFBF5),
          appBar: AppBar(

            backgroundColor: Colors.brown,
            title: Text("Simple interest calculator",
            style: TextStyle(
              color: Colors.white
            ),),

          ),
        body: Center(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.50,
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Card(
                    elevation: 20,
                    child: Padding(padding: EdgeInsets.only(top:10,bottom: 10,left: 20,right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Enter Amount",
                          ),
                        ),
                        SizedBox(height: 40,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Rate"
                          ),
                        ),
                        SizedBox(height: 40,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "Year"
                          ),
                        ),
                        SizedBox(height: 40,),
                        MaterialButton(
                            color: Colors.brown,
                            textColor: Colors.white,
                            onPressed: () {
                        }, child: Text("Calculate interest", style: TextStyle(
                          fontSize: 20
                        ),)),
                      ],
                    ),),
                ),
              ),
            ),
        ),
        ),
    );
  }
}
