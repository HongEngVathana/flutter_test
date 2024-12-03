class Product {
  late int id;
  late String title;
  late String description;
  late int price;
  late String image;
  late String category;

  Product({
    this.id = 0,
    this.title = "",
    this.description = "",
    this.price = 0,
    this.image = "",
    this.category = "",
  });

  factory Product.fromjson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
      category: json['category'],
    );
  }
}
