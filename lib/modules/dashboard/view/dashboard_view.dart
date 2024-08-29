import 'package:corelab_challenge/core/consts/app_routes.dart';
import 'package:corelab_challenge/modules/dashboard/view_model/dashboard_view_model.dart';
import 'package:corelab_challenge/modules/shared/ui/widgets/product_container.dart';
import 'package:corelab_challenge/modules/shared/ui/widgets/not_found_message.dart';
import 'package:corelab_challenge/modules/shared/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

import '../../../core/state/response_state.dart';
import '../../shared/enums/pages_enum.dart';
import '../../shared/ui/theme/app_colors.dart';
import '../../shared/ui/widgets/navbar_menu.dart';
import '../../shared/model/product_model.dart';

class DashBoardView extends StatefulWidget {
  final DashboardViewModel controller;
  const DashBoardView({super.key, required this.controller});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    await widget.controller.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBarMenu(page: Pages.dashboard),
      appBar: CustomAppBar(
        showSearchField: true,
        onSearchTap: () {
          Modular.to.pushNamed(AppRoutes.search);
        },
      ),
      body: ValueListenableBuilder<ResponseState>(
        valueListenable: widget.controller.products,
        builder: (context, state, child) {
          if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ErrorState) {
            return const NotFoundMessage();
          } else if (state is SuccessState) {
            final allProducts = widget.controller.organizeProductsByDate();

            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: allProducts.length + 1,
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

                final item = allProducts[i - 1];
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
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
