void main() {
  List<Map<String, dynamic>> fruits = [
    {'name': 'Apple', 'color': 'Red', 'price': 2.5},
    {'name': 'Banana', 'color': 'Yellow', 'price': 1.0},
    {'name': 'Grapes', 'color': 'Purple', 'price': 3.0}
  ];

  displayFruitDetails(fruits);
  applyPriceDiscount(fruits, 10);

  print('After applying discount:');
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  print('Fruit Details:');
  for (var item in fruits) {
    print('Name: ${item['name']}, Color: ${item['color']}, Price: \$${item['price']}');
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var item in fruits) {
    double originalPrice = item['price'];
    double discountedPrice = originalPrice * discountPercentage / 100;
    item['price'] = discountedPrice.toStringAsFixed(2);
  }
}