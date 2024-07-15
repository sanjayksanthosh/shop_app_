import 'package:flutter/material.dart';

class Categorypage extends StatelessWidget {
  Categorypage({super.key});
  List Categories = [
    "Vegitables",
    "Fruits",
    "Wellness",
    "Electronics",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.black)),
          child: Text(
            Categories[index],
            style: TextStyle(fontSize: 25),
          ),
        );
      },
      itemCount: Categories.length,
    );
  }
}
