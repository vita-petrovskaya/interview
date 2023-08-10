class Product {
  final String title;

  Product(this.title);

  Product.fromMap(Map<String, dynamic> data) : title = data['title'];
}