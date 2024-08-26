import 'package:corelab_challenge/modules/shared/app_colors.dart';
import 'package:corelab_challenge/modules/shared/app_text_style.dart';
import 'package:flutter/material.dart';

import '../../shared/domain/enums/pages_enum.dart';
import '../../shared/pages/widgets/navbar_menu.dart';
import '../view_model/category_controller.dart';

class CategoryView extends StatelessWidget {
  final CategoryController controller;
  const CategoryView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const NavBarMenu(page: Pages.categories),
        backgroundColor: AppColors.backgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: AppBar(
            elevation: 0,
            surfaceTintColor: Colors.transparent,
            backgroundColor: AppColors.backgroundColor,
            title: Text(
              'Categorias',
              style: AppTextStyle.priceTextStyle.copyWith(fontSize: 24),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: controller.categories.length,
                itemBuilder: (ctx, i) {
                  return Container(
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      border: Border.all(
                        color: AppColors.borderColor,
                        width: 0.5,
                      ),
                    ),
                    child: ListTile(
                      title: Text(
                        controller.categories[i].categoryName,
                        style: AppTextStyle.categoryTitle,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
