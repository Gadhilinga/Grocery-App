import 'package:flutter/material.dart';
import 'package:grocery/common/common_header_title.dart';
import 'package:grocery/grocery_view/colors.dart';
import 'package:grocery/grocery_view/product.dart';

class ProductImetsDisplay extends StatelessWidget {
  final Grocery grocery;
  const ProductImetsDisplay({super.key, required this.grocery});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.network(grocery.image, height: 120)),
            CommonHeaderTitle(
              title: grocery.name,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 7,),
             CommonHeaderTitle(
              title: '₹${grocery.price}',
              fontSize: 15,
              color: textGreen,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
