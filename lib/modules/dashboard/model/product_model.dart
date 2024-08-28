class ProductModel {
  final String imagePath;
  final String title;
  final double price;
  final double? oldPrice;
  final int? discount;
  final String parcelsInfo;
  final String productState;
  final DateTime createdAt;

  const ProductModel({
    required this.imagePath,
    required this.title,
    required this.price,
    this.oldPrice,
    this.discount,
    required this.parcelsInfo,
    required this.productState,
    required this.createdAt,
  });
}
