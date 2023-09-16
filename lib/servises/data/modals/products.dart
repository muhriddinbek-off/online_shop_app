class Products {
  int id;
  String title;
  String description;
  num price;
  num rating;
  String brand;
  String thumbnail;
  List images;
  Products({
    required this.brand,
    required this.description,
    required this.id,
    required this.price,
    required this.rating,
    required this.thumbnail,
    required this.title,
    required this.images,
  });
  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
      brand: json['brand'],
      description: json['description'],
      id: json['id'],
      price: json['price'],
      rating: json['rating'],
      thumbnail: json['thumbnail'],
      title: json['title'],
      images: List.from(json['images']),
    );
  }
}
