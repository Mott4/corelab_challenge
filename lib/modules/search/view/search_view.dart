import 'package:corelab_challenge/modules/shared/UI/theme/app_text_style.dart';
import 'package:corelab_challenge/modules/shared/ui/widgets/product_container.dart';
import 'package:corelab_challenge/modules/search/view_model/search_view_model.dart';
import 'package:corelab_challenge/modules/shared/ui/widgets/not_found_message.dart';
import 'package:corelab_challenge/modules/shared/ui/widgets/custom_app_bar.dart';
import 'package:corelab_challenge/modules/shared/ui/widgets/navbar_menu.dart';
import 'package:flutter/material.dart';

import '../../../core/state/response_state.dart';
import '../../shared/model/product_model.dart';
import '../../shared/enums/pages_enum.dart';
import '../widgets/query_historic_tile.dart';

class SearchView extends StatefulWidget {
  final String? searchQuery;
  final SearchViewModel controller;
  const SearchView({super.key, this.searchQuery, required this.controller});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  FocusNode focusNode = FocusNode();
  final searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    focusNode.requestFocus();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBarMenu(page: Pages.dashboard),
      appBar: CustomAppBar(
        showSearchField: true,
        searchController: searchController,
        focusNode: focusNode,
        onSubmitted: (query) {
          if (query.isEmpty) {
            return widget.controller.searchState.value = SuccessState(widget.controller.searchHistory.value);
          } else {
            widget.controller.clearProducts();
            widget.controller.fetchSearch(query);
          }
        },
      ),
      body: ValueListenableBuilder(
        valueListenable: widget.controller.searchState,
        builder: (context, search, child) {
          if (search is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (search is SuccessState) {
            final data = search.data;

            if (data is List<ProductModel>) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data.length} resultados encontrados',
                      style: AppTextStyle.titleTextStyle,
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.only(top: 20),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          final product = data[index];
                          return ProductContainer(item: product);
                        },
                      ),
                    ),
                  ],
                ),
              );
            } else if (data is List<String>) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pesquisas Recentes',
                      style: AppTextStyle.titleTextStyle,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          final historyItem = data[index];
                          return QueryHistoricTile(
                            searchTitle: historyItem,
                            onTap: () {
                              searchController.text = historyItem;
                              widget.controller.fetchSearch(historyItem);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            }
          } else if (search is ErrorState) {
            return Center(
              child: NotFoundMessage(
                searchText: searchController.text,
              ),
            );
          }
          return const _InitialStateWidget();
        },
      ),
    );
  }
}

class _InitialStateWidget extends StatelessWidget {
  const _InitialStateWidget();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Nenhuma pesquisa realizada ainda.'),
    );
  }
}
