class SmartfonModal {
  final String title;
  final String thumbnail;
  final int price;

  SmartfonModal({
    required this.title,
    required this.thumbnail,
    required this.price,
  });

  factory SmartfonModal.fromJson(Map<String, dynamic> json) {
    return SmartfonModal(
      title: json['title'],
      thumbnail: json['thumbnail'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'thumbnail': thumbnail,
      'price': price,
    };
  }
}
