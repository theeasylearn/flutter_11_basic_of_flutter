//Interest Calculator
import 'package:flutter/material.dart';
//create class that extends Statefulwidget
class TextboxDemo extends StatefulWidget {
  @override
  State<TextboxDemo> createState() => _TextboxDemoState();
}

class _TextboxDemoState extends State<TextboxDemo> {
  //create 3 TextEditingController type object
  TextEditingController amountController = new TextEditingController();
  TextEditingController rateController = new TextEditingController();
  TextEditingController yearController = new TextEditingController();

  //create 3 String type variable
  double amount = 0.0, rate = 0.0, year = 0.0;
  int count = 0;
  String result = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    count = count + 1;
    print("init state method called $count");
    //bind TextEditingController with TextInputField
    amountController.addListener(() {
        if(amountController.text !=null && amountController.text.trim() != '')
        {
            amount = double.parse(amountController.text);
        }
    });
    rateController.addListener(() {
        if(rateController.text != null && rateController.text.trim() != '')
        {
          rate = double.parse(rateController.text);
        }
    });
    yearController.addListener(() {
      if(yearController.text != null && yearController.text.trim() != '')
      {
        year = double.parse(yearController.text);
      }
    });
  }
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
              height: MediaQuery.of(context).size.height * 0.60,
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
                          controller: amountController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Enter Amount",
                          ),
                        ),
                        SizedBox(height: 40,),
                        TextFormField(
                          controller: rateController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Rate"
                          ),
                        ),
                        SizedBox(height: 40,),
                        TextFormField(
                          controller: yearController,
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
                              //calculate interest
                              double interest = (amount * rate * year) / 100;
                              this.setState(() {
                                  result = "simple interest = $interest";
                              });
                        }, child: Text("Calculate interest", style: TextStyle(
                          fontSize: 20
                        ),)),
                        SizedBox(height: 40,),
                        Text(result,style: TextStyle(
                          fontSize: 20
                        ),)
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
