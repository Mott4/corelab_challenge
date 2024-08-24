import 'package:corelab_challenge/modules/dashboard/view_model/dashboard_controller.dart';
import 'package:corelab_challenge/modules/dashboard/widgets/product_container.dart';
import 'package:flutter/material.dart';

import '../../shared/app_colors.dart';

class DashBoardView extends StatelessWidget {
  final DashboardController controller;
  const DashBoardView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(64),
          child: AppBar(
            backgroundColor: AppColors.appBarColor,
            elevation: 0,
            title: Container(
              margin: const EdgeInsets.only(top: 8),
              height: 44,
              decoration: const BoxDecoration(color: AppColors.backgroundColor, borderRadius: BorderRadius.all(Radius.circular(8))),
              child: TextField(
                showCursor: false,
                onTap: () {
                  Navigator.of(context).pushNamed('/search-result');
                },
                decoration: const InputDecoration(
                  hintText: 'Buscar',
                  hintStyle: TextStyle(fontFamily: 'DMSans-Light', color: AppColors.greyColor),
                  suffixIcon: Icon(Icons.search, color: AppColors.appBarColor, size: 24),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 11, horizontal: 12),
                ),
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Últimos anúncios',
                    style: TextStyle(
                      fontFamily: 'DMSans-Bold',
                      fontSize: 20,
                      color: AppColors.titleColor,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hoje',
                    style: TextStyle(
                      fontFamily: 'DMSans-Light',
                      fontSize: 14,
                      color: AppColors.greyColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (c, i) {
                  return ProductContainer(item: controller.items[i]);
                },
                itemCount: controller.items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
