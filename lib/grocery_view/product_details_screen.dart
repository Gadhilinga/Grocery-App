import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/common/common_header_title.dart';
import 'package:grocery/grocery_view/colors.dart';
import 'package:grocery/grocery_view/controller/grocery_controller.dart';
import 'package:grocery/grocery_view/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Grocery product;
  ProductDetailScreen({super.key, required this.product});

  final GroceryController controller = Get.put(GroceryController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(elevation: 0, backgroundColor: backgroundColor),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(product.image, width: size.width, height: 400),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommonHeaderTitle(
                    title: product.name,
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Spacer(),
                      Obx(
                        () => Row(
                          children: [
                            GestureDetector(
                              onTap: controller.decrement,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green[50],
                                ),
                                child: const Center(
                                  child: CommonHeaderTitle(
                                    title: "-",
                                    fontSize: 25,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            CommonHeaderTitle(
                              title: controller.quantity.toString(),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(width: 10),
                            GestureDetector(
                              onTap: controller.increment,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  gradient: gradientColor,
                                ),
                                child: const Center(
                                  child: CommonHeaderTitle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    title: "+",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const CommonHeaderTitle(
                    title: 'Description',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 20),
                  CommonHeaderTitle(
                    title: '${product.name} ${product.description}',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _bottom(product),
    );
  }

  Widget _bottom(Grocery product) {
    return Obx(
      () => Container(
        height: 100,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CommonHeaderTitle(
                title: "Price",
                fontSize: 18,
                color: Colors.grey,
              ),
              CommonHeaderTitle(
                title:
                    "₹${(product.price * controller.quantity.value).toStringAsFixed(2)}",
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
