class FlashSaleProductModel {
  final int id;
  final String name;
  final String imageLink;
  final String discount;
  final String newPrice;
  final String oldPrice;

  FlashSaleProductModel({
    required this.id,
    required this.name,
    required this.imageLink,
    required this.discount,
    required this.newPrice,
    required this.oldPrice,
  });

  factory FlashSaleProductModel.fromJson(Map<String, dynamic> json) {
    return FlashSaleProductModel(
      id: json['id'],
      name: json['name'],
      imageLink: json['imageLink'],
      discount: json['discount'],
      newPrice: json['newPrice'],
      oldPrice: json['oldPrice'],
    );
  }
}
