import 'package:corelab_challenge/core/state/response_state.dart';
import 'package:corelab_challenge/modules/shared/ui/theme/app_colors.dart';
import 'package:corelab_challenge/modules/shared/ui/theme/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../shared/enums/pages_enum.dart';
import '../../shared/ui/widgets/not_found_message.dart';
import '../../shared/ui/widgets/custom_app_bar.dart';
import '../../shared/ui/widgets/navbar_menu.dart';
import '../model/categories_model.dart';
import '../view_model/category_view_model.dart';

class CategoryView extends StatefulWidget {
  final CategoryViewModel controller;

  const CategoryView({super.key, required this.controller});

  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _getCategories();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent && !_isLoadingMore) {
        _loadMoreCategories();
      }
    });
  }

  _getCategories() async {
    await widget.controller.getLocalCategories();

    if (widget.controller.categories.value is ErrorState) {
      await widget.controller.getCategories();
      if (widget.controller.categories.value is SuccessState) {
        await widget.controller.saveCategoriesLocal();
      }
    }
  }

  _loadMoreCategories() async {
    setState(() {
      _isLoadingMore = true;
    });

    await widget.controller.getCategories();

    setState(() {
      _isLoadingMore = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBarMenu(page: Pages.categories),
      appBar: const CustomAppBar(title: 'Categorias', showSearchField: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: widget.controller.categories,
              builder: (context, state, child) {
                if (state is LoadingState && !_isLoadingMore || state is InitialState && !_isLoadingMore) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is ErrorState) {
                  return const NotFoundMessage();
                } else {
                  final model = state.data as CategoriesModel;
                  return ListView.builder(
                    controller: _scrollController,
                    physics: const BouncingScrollPhysics(),
                    itemCount: model.categories.length + 1,
                    itemBuilder: (ctx, i) {
                      if (i < model.categories.length) {
                        return Container(
                          decoration: BoxDecoration(
                            color: AppColors.whiteColor,
                            border: Border.all(color: AppColors.borderColor, width: 0.5),
                          ),
                          child: ListTile(
                            title: Text(
                              model.categories[i],
                              style: AppTextStyle.categoryTitle,
                            ),
                          ),
                        );
                      } else {
                        return _isLoadingMore
                            ? const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(child: CircularProgressIndicator()),
                              )
                            : const SizedBox.shrink();
                      }
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
