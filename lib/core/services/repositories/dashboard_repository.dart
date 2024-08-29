import 'dart:math';

import 'package:corelab_challenge/core/services/mock/mock_products.dart';

import 'package:dartz/dartz.dart';

abstract class IDashboardRepository {
  Future<Either<Map<String, dynamic>, Exception>> getProducts();
}

class DashboardRepository implements IDashboardRepository {
  @override
  Future<Either<Map<String, dynamic>, Exception>> getProducts() async {
    await Future.delayed(const Duration(seconds: 3));

    final randomNumber = Random().nextInt(100);

    if (randomNumber < 90) {
      return Left(ProductsMock.json());
    } else {
      return Right(Exception({'error': 'Unable to connect to the API', 'code': 3}));
    }
  }
}
