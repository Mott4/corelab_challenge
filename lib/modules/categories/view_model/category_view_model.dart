import 'package:corelab_challenge/core/state/response_state.dart';
import 'package:corelab_challenge/modules/categories/model/categories_model.dart';
import 'package:flutter/material.dart';

import '../../../core/services/repositories/categories_repository.dart';

class CategoryViewModel extends ChangeNotifier {
  final ICategoriesRepository _getCategories;

  CategoryViewModel(this._getCategories);

  ValueNotifier<ResponseState> categories = ValueNotifier(InitialState());
  ValueNotifier<ResponseState> localSave = ValueNotifier(InitialState());
  ValueNotifier<ResponseState> loadingMoreCategories = ValueNotifier(InitialState());

  Future<void> getCategories({bool isPullToRefresh = false}) async {
    if (isPullToRefresh == false) {
      categories.value = LoadingState();
      final result = await _getCategories.getCategories();

      result.fold(
        (success) => categories.value = SuccessState(CategoriesModel.fromJson(success)),
        (fail) => categories.value = ErrorState(fail),
      );
    } else {
      loadingMoreCategories.value = LoadingState();
      final result = await _getCategories.getCategories();

      result.fold(
        (success) => loadingMoreCategories.value = SuccessState(CategoriesModel.fromJson(success)),
        (fail) => loadingMoreCategories.value = ErrorState(fail),
      );

      if (loadingMoreCategories.value == categories.value) {
        categories.value = loadingMoreCategories.value;
      } else {
        loadingMoreCategories.value = ErrorState(Exception('Você chegou ao fim da lista.'));
      }
    }
  }

  Future<void> getLocalCategories() async {
    categories.value = LoadingState();
    final result = await _getCategories.getLocalCategories();

    result.fold(
      (success) => categories.value = SuccessState(CategoriesModel.fromJson(success)),
      (fail) => categories.value = ErrorState(fail),
    );
  }

  Future<void> saveCategoriesLocal() async {
    localSave.value = LoadingState();

    final data = (categories.value.data as CategoriesModel).toJson();
    final result = await _getCategories.setLocalData(data);

    result.fold(
      (success) => localSave.value = SuccessState(null),
      (fail) => localSave.value = ErrorState(fail),
    );
  }
}
