import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery/common/common_header_title.dart';
import 'package:grocery/grocery_view/colors.dart';
import 'package:grocery/grocery_view/controller/grocery_controller.dart';
import 'package:grocery/grocery_view/product.dart';
import 'package:grocery/grocery_view/product_details_screen.dart';
import 'package:grocery/grocery_view/product_items_display.dart';


class HomeScreenGrocery extends StatelessWidget {
  HomeScreenGrocery({super.key});
  final GroceryController controller = Get.put(GroceryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Welcome\n",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    TextSpan(
                      text: "Gadhilinga",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -1,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const CircleAvatar(
                radius: 27,
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0WR37JB-g5YiV9oV0Z_ynKPN-78Ke-24PXQ&s',
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _searchField(),
            const SizedBox(height: 20),
            _categoryItems(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemCount: controller.groceryList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProductDetailScreen(
                            product: controller.groceryList[index],
                          ),
                        ),
                      );
                    },
                    child: ProductImetsDisplay(
                      grocery: controller.groceryList[index],
                    ),
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(
          child: TextField(
            onChanged: (value) => controller.searchGrocery(value),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search, color: Colors.grey, size: 30),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "Search Grocery",
              hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  Widget _categoryItems() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Obx(() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          groceryCategories.length,
          (index) {
            final category = groceryCategories[index];
            final isSelected = controller.selectedCategory.value == category;
            return GestureDetector(
              onTap: () => controller.filterByCategory(category),
              child: SizedBox(
                height: 50,
                child: Column(
                  children: [
                    CommonHeaderTitle(
                      title: category,
                      fontSize: isSelected ? 18 : 16,
                      color: isSelected ? textGreen : Colors.black26,
                      fontWeight: isSelected ? FontWeight.w900 : FontWeight.w500,
                    ),
                    isSelected
                        ? const CircleAvatar(
                            radius: 4,
                            backgroundColor: textGreen,
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            );
          },
        ),
      )),
    );
  }
}
