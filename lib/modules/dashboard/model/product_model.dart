class ProductModel {
  final String imagePath;
  final String title;
  final double price;
  final double? oldPrice;
  final int? promotionPercentage;
  final String itemDescription;
  final String itemState;
  final String itemCategory;

  const ProductModel({
    required this.imagePath,
    required this.title,
    required this.price,
    this.oldPrice,
    this.promotionPercentage,
    required this.itemDescription,
    required this.itemState,
    required this.itemCategory,
  });
}
