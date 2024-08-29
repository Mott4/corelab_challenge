import 'package:collection/collection.dart';

class CategoriesModel {
  final List<String> categories;

  const CategoriesModel({required this.categories});

  factory CategoriesModel.fromJson(Map<String, dynamic> json) {
    List<String>? categories;

    if (json['categories'] is List<dynamic>) {
      categories = (json['categories'] as List<dynamic>).map((e) => e.toString()).toList();
    }
    return CategoriesModel(categories: categories ?? json['categories']);
  }

  Map<String, dynamic> toJson() {
    return {'categories': categories};
  }

  @override
  bool operator ==(Object other) {
    bool isEqual = other is CategoriesModel;
    if (isEqual) isEqual = categories.equals(other.categories);
    return isEqual;
  }

  @override
  int get hashCode => categories.hashCode;
}
