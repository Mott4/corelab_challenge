import 'dart:convert';
import 'dart:math';

import 'package:corelab_challenge/core/services/local_service.dart';

import 'package:dartz/dartz.dart';

import '../../consts/consts.dart';

abstract class ICategoriesRepository {
  Future<Either<Map<String, dynamic>, Exception>> getCategories();
  Future<Either<Map<String, dynamic>, Exception>> getLocalCategories();
  Future<Either<void, Exception>> clear();
  Future<Either<void, Exception>> setLocalData(Map<String, dynamic> data);
}

class CategoriesRepository implements ICategoriesRepository {
  final ILocalDataService _localDataService;

  const CategoriesRepository(this._localDataService);

  @override
  Future<Either<void, Exception>> clear() async {
    try {
      return Left(await _localDataService.clear(Consts.keys.categories));
    } catch (e) {
      return Right(Exception({'error': 'Unable to clear the DB.'}));
    }
  }

  @override
  Future<Either<Map<String, dynamic>, Exception>> getCategories() async {
    await Future.delayed(const Duration(seconds: 3));

    final randomNumber = Random().nextInt(100);

    if (randomNumber < 90) {
      return const Left({
        'categories': [
          'Biossegurança',
          'Descartáveis',
          'Dentística e Estética',
          'Ortodontia',
          'Periféricos e Peças de Mão',
          'Moldagem',
          'Prótese',
          'Cimentos',
          'Instrumentos',
          'Cirurgia e Periodontia',
          'Radiologia',
        ],
      });
    } else {
      return Right(Exception({'error': 'Unable to connect to the API', 'code': 3}));
    }
  }

  @override
  Future<Either<Map<String, dynamic>, Exception>> getLocalCategories() async {
    try {
      final result = await _localDataService.get(Consts.keys.categories);
      if (result.isEmpty) {
        return Right(Exception({'error': 'Return is empty', 'code': 1}));
      }

      final Map<String, dynamic> data = jsonDecode(result);

      if (data.containsKey('error_message')) {
        return Right(Exception({'error': data['error_message']}));
      } else {
        return Left(data);
      }
    } catch (e) {
      return Right(Exception({'error': 'A unknown error has occourred', 'code': 2}));
    }
  }

  @override
  Future<Either<void, Exception>> setLocalData(Map<String, dynamic> data) async {
    try {
      final json = jsonEncode(data);
      return Left(await _localDataService.add(Consts.keys.categories, json));
    } catch (e) {
      return Right(Exception({'error': 'A unknown error has occourred', 'code': 2}));
    }
  }
}
