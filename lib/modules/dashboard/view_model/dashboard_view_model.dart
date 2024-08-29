import 'package:corelab_challenge/core/services/repositories/dashboard_repository.dart';
import 'package:corelab_challenge/modules/shared/model/product_model.dart';
import 'package:flutter/material.dart';

import '../../../core/state/response_state.dart';

class DashboardViewModel extends ChangeNotifier {
  ProductModel? productModel;

  final IDashboardRepository dashboardRepository;
  DashboardViewModel(this.dashboardRepository);

  final List<dynamic> allProducts = [];
  List<dynamic> listProducts = [];

  ValueNotifier<ResponseState> products = ValueNotifier(InitialState());

  Future<void> getProducts() async {
    products.value = LoadingState();
    final result = await dashboardRepository.getProducts();

    result.fold(
      (success) {
        List<dynamic> productList = (success['products'] as List).map((item) => ProductModel.fromJson(item)).toList();

        listProducts = productList;
        products.value = SuccessState(listProducts);
      },
      (fail) => products.value = ErrorState(fail),
    );
  }

  List<dynamic> organizeProductsByDate() {
    allProducts.clear();

    final today = DateTime.now();
    final yesterday = today.subtract(const Duration(days: 1));

    final todayProducts = listProducts.where((item) => isSameDate(item.createdAt, today)).toList();
    final yesterdayProducts = listProducts.where((item) => isSameDate(item.createdAt, yesterday)).toList();
    final olderProducts = listProducts.where((item) => item.createdAt.isBefore(yesterday.subtract(const Duration(days: 1)))).toList();

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
