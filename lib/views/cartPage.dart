import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoop_app/model/productmodel.dart';
import 'package:shoop_app/providers/cartProvider.dart';

class Cartpage extends StatelessWidget {
  Cartpage({super.key});

  int totalAmount = 0;

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
              onPressed: () {
                Provider.of<CartProvider>(context, listen: false).clearCart();
              },
              child: Text("clear all"),
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.green),
                  foregroundColor: WidgetStatePropertyAll(Colors.white)),
            ),
          ),
          Expanded(
            child: Consumer<CartProvider>(builder: (context, item, _) {
              item.totalsum();
              return item.cartItems.isEmpty
                  ? Center(child: Text("Cart is empty"))
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        Product cartItems = item.cartItems[index];
                        return ListTile(
                          title: Text(cartItems.name),
                          trailing: Text(cartItems.price.toString()),
                        );
                      },
                      itemCount: item.cartItems.length,
                    );
            }),
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
                  Consumer<CartProvider>(builder: (context, item, _) {
                    return Text(item.totalAmount.toString());
                  })
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
