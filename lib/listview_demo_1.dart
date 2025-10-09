import 'package:flutter/material.dart';
class ListViewDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Example of list view"),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            DisplayItem("India",1),
            DisplayItem("Russia",2),
            DisplayItem("China",3),
            DisplayItem("Brazil",4),
            DisplayItem("Canada",5),
            DisplayItem("Australia", 6),
            DisplayItem("Germany", 7),
            DisplayItem("France", 8),
            DisplayItem("Japan", 9),
            DisplayItem("United Kingdom", 10),
            DisplayItem("Italy", 11),
            DisplayItem("South Africa", 12),
            DisplayItem("Mexico", 13),
            DisplayItem("Argentina", 14),
            DisplayItem("South Korea", 15),
            DisplayItem("Spain", 16),
            DisplayItem("Netherlands", 17),
            DisplayItem("Switzerland", 18),
            DisplayItem("Sweden", 19),
            DisplayItem("Norway", 20),
            DisplayItem("Denmark", 21),
            DisplayItem("Finland", 22),
            DisplayItem("Belgium", 23),
            DisplayItem("Austria", 24),
            DisplayItem("Portugal", 25)
          ],
        ),
      ),
    );
  }
  Widget DisplayItem(String country,int index)
  {
      return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all()
        ),
        child: ListTile(
          title: Text(country),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://picsum.photos/64?random=$index"),
          ),
          trailing: Icon(Icons.star),
        ),
      );
  }
}
