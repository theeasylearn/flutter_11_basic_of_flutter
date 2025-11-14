import 'package:flutter/material.dart';
class TableDemo1 extends StatelessWidget {
  const TableDemo1({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Table Demo"),),
        body: Material(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Table(
                  border: TableBorder.all(),
                  columnWidths: const {
                    0: FractionColumnWidth(0.52),
                    1: FractionColumnWidth(0.16),
                    2: FractionColumnWidth(0.16),
                    3: FractionColumnWidth(0.16),
                  },
                  children: [
                    TableRow(
                        children: [
                          MyText("Name"),
                          MyText("Dart"),
                          MyText("Flutter"),
                          MyText("A.P.I"),
                        ]
                    ),
                    TableRow(
                        children: [
                          MyText("Sakshi Moradiya"),
                          MyText("50"),
                          MyText("60"),
                          MyText("70"),
                        ]
                    ),
                    TableRow(
                        children: [
                          MyText("Akaal Savaliya"),
                          MyText("60"),
                          MyText("70"),
                          MyText("80"),
                        ]
                    ),
                    TableRow(
                        children: [
                          MyText("Om Lathiya"),
                          MyText("70"),
                          MyText("80"),
                          MyText("90"),
                        ]
                    ),
                  ],
            ),),

        ),
      ),

    );
  }

  Widget MyText(String label) {
      return  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(label,style:const TextStyle(
            fontWeight: FontWeight.bold
        ),),
      );
  }
}
