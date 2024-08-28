import 'package:corelab_challenge/modules/dashboard/view_model/dashboard_view_model.dart';
import 'package:corelab_challenge/modules/dashboard/widgets/product_container.dart';
import 'package:corelab_challenge/modules/shared/pages/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../shared/pages/app_colors.dart';
import '../../shared/domain/enums/pages_enum.dart';
import '../../shared/pages/widgets/navbar_menu.dart';
import '../model/product_model.dart';

class DashBoardView extends StatelessWidget {
  final DashboardViewModel controller;
  const DashBoardView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final allItems = controller.organizeItemsByDate();

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const NavBarMenu(page: Pages.dashboard),
        appBar: CustomAppBar(showSearchField: true, onSearchTap: () {}),
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: allItems.length,
          itemBuilder: (ctx, i) {
            if (i == 0) {
              return const Padding(
                padding: EdgeInsets.only(left: 20, top: 24),
                child: Text(
                  'Últimos anúncios',
                  style: TextStyle(
                    fontFamily: 'DMSans-Bold',
                    fontSize: 24,
                    color: AppColors.titleColor,
                  ),
                ),
              );
            }

            final item = allItems[i - 1];
            if (item is String) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
                child: Text(
                  item,
                  style: const TextStyle(
                    fontFamily: 'DMSans-Medium',
                    fontSize: 18,
                    color: AppColors.greyColor,
                  ),
                ),
              );
            }

            final product = item as ProductModel;
            String? formattedDate;

            if (product.createdAt.isBefore(DateTime.now().subtract(const Duration(days: 2)))) {
              formattedDate = DateFormat('dd/MM/yyyy').format(product.createdAt);
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (formattedDate != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    child: Text(
                      formattedDate,
                      style: const TextStyle(
                        fontFamily: 'DMSans-Medium',
                        fontSize: 16,
                        color: AppColors.greyColor,
                      ),
                    ),
                  ),
                ProductContainer(item: product),
              ],
            );
          },
        ),
      ),
    );
  }
}
