import 'package:get/get.dart';
import 'package:grocery/grocery_view/product.dart';

class GroceryController extends GetxController {
  RxString selectedCategory = 'All'.obs;
  RxList groceryList = <Grocery>[].obs;
  RxInt quantity = 1.obs;
  @override
  void onInit() {
    super.onInit();
    groceryList.assignAll(groceryItems);
  }

  void filterByCategory(String category) {
    selectedCategory.value = category;
    if (category == 'All') {
      groceryList.assignAll(groceryItems);
    } else {
      groceryList.assignAll(
        groceryItems
            .where(
              (item) => item.category.toLowerCase() == category.toLowerCase(),
            )
            .toList(),
      );
    }
  }

  void searchGrocery(String keyword) {
    groceryList.assignAll(
      groceryItems
          .where(
            (item) => item.name.toLowerCase().contains(keyword.toLowerCase()),
          )
          .toList(),
    );
  }

  void increment() {
    quantity++;
  }

  void decrement() {
    if (quantity > 1) quantity--;
  }
}
