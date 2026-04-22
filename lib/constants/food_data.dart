class MyFoodData {
  static List<FoodItem> foodItems = [
    FoodItem(
      name: "Veggie Tomato Mix",
      image: "assets/images/food_1.png",
      price: 1900,
    ),
    FoodItem(
      name: "Egg & Cucumber Delight",
      image: "assets/images/food_2.jpg",
      price: 2300,
    ),
    FoodItem(
      name: "Fried Chicken Combo",
      image: "assets/images/food_3.jpg",
      price: 3000,
    ),
    FoodItem(
      name: "Moi-Moi & Ekpa",
      image: "assets/images/food_4.jpg",
      price: 3500,
    ),
    FoodItem(
      name: "Spicy Beef Skewers",
      image: "assets/images/food_5.jpg",
      price: 4000,
    ),
    FoodItem(
      name: "Grilled Fish Platter",
      image: "assets/images/food_6.jpg",
      price: 4200,
    ),
    FoodItem(
      name: "Chicken Salad Bowl",
      image: "assets/images/food_7.jpg",
      price: 2800,
    ),
    FoodItem(
      name: "Vegetable Fried Rice",
      image: "assets/images/food_8.jpg",
      price: 2100,
    ),
    FoodItem(
      name: "Beef Burger Special",
      image: "assets/images/food_9.jpg",
      price: 3300,
    ),
    FoodItem(
      name: "Seafood Pasta Mix",
      image: "assets/images/food_10.jpg",
      price: 3600,
    ),
    FoodItem(
      name: "Fruit & Yogurt Parfait",
      image: "assets/images/food_11.jpg",
      price: 1500,
    ),
  ];
}

class FoodItem {
  final String name;
  final String image;
  final int price;
  int counter;
  bool isWishlisted;

  FoodItem({
    required this.name,
    required this.image,
    required this.price,
    this.counter = 1,
    this.isWishlisted = false,
  });
}
