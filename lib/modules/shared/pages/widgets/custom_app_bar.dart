import 'package:flutter/material.dart';

import '../app_colors.dart';
import '../app_text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? customTitle;
  final bool showSearchField;
  final TextEditingController? searchController;
  final VoidCallback? onSearchTap;

  const CustomAppBar({
    super.key,
    this.title,
    this.customTitle,
    this.showSearchField = false,
    this.searchController,
    this.onSearchTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: showSearchField ? AppColors.appBarColor : AppColors.backgroundColor,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      title: showSearchField
          ? Container(
              margin: const EdgeInsets.only(top: 8),
              height: 44,
              decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: TextField(
                controller: searchController,
                showCursor: false,
                onTap: onSearchTap,
                decoration: const InputDecoration(
                  hintText: 'Buscar',
                  hintStyle: TextStyle(fontFamily: 'DMSans-Light', color: AppColors.greyColor),
                  suffixIcon: Icon(Icons.search, color: AppColors.appBarColor, size: 24),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 11, horizontal: 12),
                ),
              ),
            )
          : (customTitle ??
              Text(
                title ?? '',
                style: AppTextStyle.priceTextStyle.copyWith(fontSize: 24),
              )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
