import 'dart:math';

import 'package:either_dart/either.dart';

import '../../../modules/search/model/search_model.dart';
import '../mock/mock_search_product.dart';

abstract class ISearchRepository {
  Future<Either<Map<String, dynamic>, Exception>> fetchSearch(String value);
}

class SearchRepository implements ISearchRepository {
  @override
  Future<Either<Map<String, dynamic>, Exception>> fetchSearch(String value) async {
    await Future.delayed(const Duration(seconds: 3));

    final random = Random().nextInt(100);
    if (random < 90) {
      List<SearchProductModel> productList =
          (SearchProductMock.json()['products'] as List<dynamic>).map((item) => SearchProductModel.fromJson(item)).toList();
      return Left(SearchProductMock.json());
    }
    return Right(Exception({'error': 'Unable to connect to the API', 'code': 3}));
  }
}
