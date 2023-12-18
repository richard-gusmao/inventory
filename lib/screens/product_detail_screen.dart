import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PRODUCT DETAILs".toUpperCase(),
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
              height: 300,
              width: double.infinity,
              child: Image.asset(
                "assets/box.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Quantity",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Buy Price",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Sell Price",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Warehouse Address",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
