import 'package:flutter/material.dart';

class Cartpage extends StatefulWidget {
  Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  List items = [
    {"name": "Toothpaste", "price": 100}
  ];

  int totalAmount = 0;

  @override
  void initState() {
    totalAmount = items[0]["price"];
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 400,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("clear all"),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  foregroundColor: WidgetStatePropertyAll(Colors.white)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index]["name"]),
                  trailing: Text(items[index]["price"].toString()),
                );
              },
              itemCount: items.length,
            ),
          ),
          Container(
            height: 50,
            width: 400,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("CheckOut"),
                  SizedBox(
                    width: 30,
                  ),
                  Text(totalAmount.toString())
                ],
              ),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  foregroundColor: WidgetStatePropertyAll(Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
