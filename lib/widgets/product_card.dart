import 'package:flutter/material.dart';
import 'package:shoop_app/views/product_details_page.dart';

class Productcard extends StatelessWidget {
  var product;
  Productcard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ProductDetailsPage(
              name: product['name'],
              price: product['price'],
              image:
                  "https://images.unsplash.com/photo-1610099167931-33655a52194b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            );
          },
        ));
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: .5)),
        height: 100,
        width: 100,
        child: Column(
          children: [
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1610099167931-33655a52194b?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ))),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tomato",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rs. 50",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("fresh from the garder aslkdjasldjlaskjdlaskjdlaksjdlka.")
          ],
        ),
      ),
    );
  }
}
