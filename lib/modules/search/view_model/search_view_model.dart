import 'package:corelab_challenge/core/services/repositories/search_repository.dart';
import 'package:flutter/material.dart';

import '../../../core/state/response_state.dart';
import '../../shared/model/product_model.dart';
import '../model/search_model.dart';

class SearchViewModel extends ChangeNotifier {
  final ISearchRepository searchRepository;
  SearchViewModel(this.searchRepository);

  String searchQuery = '';

  final ValueNotifier<ResponseState> searchState = ValueNotifier(InitialState());
  final ValueNotifier<List<String>> searchHistory = ValueNotifier([]);

  Future<void> fetchSearch(String value) async {
    searchState.value = LoadingState();
    searchQuery = value;
    addSearchToHistory(value);

    final result = await searchRepository.fetchSearch(value);

    result.fold(
      (success) {
        List<ProductModel> data = (success['products'] as List<dynamic>).map((e) => ProductModel.fromJson(e)).toList();
        searchState.value = SuccessState(data);
      },
      (fail) => searchState.value = ErrorState(fail),
    );
  }

  void clearProducts() {
    searchState.value = InitialState();
  }

  void addSearchToHistory(String value) {
    if (!searchHistory.value.contains(value)) {
      searchHistory.value = [...searchHistory.value, value];
    }
  }
}
