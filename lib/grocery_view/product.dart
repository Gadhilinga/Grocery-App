List<String> groceryCategories = ['All', 'Fruit', 'Vegetable', 'Salad', 'Dairy'];

class Grocery {
  final String description, name, image, category;
  final double price;

  Grocery({
    required this.category,
    required this.image,
    required this.description,
    required this.name,
    required this.price,
  });
}

List<Grocery> groceryItems = [
  Grocery(
    category: 'Fruit',
    image:
        'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/orange.png',
    name: 'Orange Fruit',
    price: 9.99,
    description: description,
  ),
  Grocery(
    image:
        'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/broccoli.png',
    category: 'Vegetable',
    name: 'Broccoli Vegetable',
    description: description,
    price: 10.9,
  ),
  Grocery(
    category: 'Fruit',
    name: 'Apple Fruit',
    image:
        'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/apple.png',
    price: 15.15,
    description: description,
  ),
  Grocery(
    category: 'Vegetable',
    image:
        'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/potato.png',
    description: description,
    name: 'Potato Vegetable',
    price: 9.9,
  ),
  Grocery(
    category: 'Vegetable',
    image:
        'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/lettuce.png',
    name: 'Celery Vegetable',
    description: description,
    price: 11.0,
  ),
  Grocery(
    category: 'Vegetable',
    image:
        'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/carrot.png',
    name: 'Carrot Vegetable',
    description: description,
    price: 23.5,
  ),
  Grocery(
    image:
        'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/grape.png',
    name: 'Grape Fruit',
    category: 'Fruit',
    price: 20.7,
    description: description,
  ),
  Grocery(
    image:
        'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/mango.png',
    name: 'Mango Fruit',
    category: 'Fruit',
    price: 16.0,
    description: description,
  ),
  Grocery(
    category: 'Fruit',
    image:
        'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery/melon.png',
    description: description,
    name: 'Melon Fruit',
    price: 11.11,
  ),
  Grocery(
    category: 'Salad',
    image:
   'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/food-delivery(foodel)/veg-salad.png',
    description: description,
    name: 'Veg Salad',
    price: 20.0,
  ),
  Grocery(
    category: 'Dairy',
    image:
       'https://raw.githubusercontent.com/Nabinji/Flutter_UI-Design/main/assets/grocery-ui/milk.png',
    description: description,
    name: 'Milk',
    price: 15.5,
  ),
];

const description =
    "are an essential part of a healthy diet, providing the body with a wide range of nutrients, vitamins, and minerals that are crucial for overall well-being. Apples, for example, are not only rich in dietary fiber, which aids digestion and promotes gut health, but they also contain antioxidants that help reduce the risk of chronic diseases.";
