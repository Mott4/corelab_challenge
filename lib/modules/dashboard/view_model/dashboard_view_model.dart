import 'package:corelab_challenge/modules/dashboard/model/product_model.dart';
import 'package:flutter/material.dart';

import '../model/mock_products.dart';

class DashboardViewModel extends ChangeNotifier {
  ProductModel? productModel;

  List<ProductModel> products = mockProducts;
  final List<dynamic> allProducts = [];

  List<dynamic> organizeItemsByDate() {
    final today = DateTime.now();
    final yesterday = today.subtract(const Duration(days: 1));

    final todayProducts = products.where((item) => isSameDate(item.createdAt, today)).toList();
    final yesterdayProducts = products.where((item) => isSameDate(item.createdAt, yesterday)).toList();
    final olderProducts = products.where((item) => item.createdAt.isBefore(yesterday.subtract(const Duration(days: 1)))).toList();

    if (todayProducts.isNotEmpty) {
      allProducts.add('Hoje');
      allProducts.addAll(todayProducts);
    }
    if (yesterdayProducts.isNotEmpty) {
      allProducts.add('Ontem');
      allProducts.addAll(yesterdayProducts);
    }
    if (olderProducts.isNotEmpty) {
      allProducts.addAll(olderProducts);
    }

    return allProducts;
  }

  bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }
}
