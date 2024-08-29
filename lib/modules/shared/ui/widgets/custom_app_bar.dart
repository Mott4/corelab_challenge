import 'package:corelab_challenge/modules/shared/ui/theme/app_colors.dart';
import 'package:corelab_challenge/modules/shared/ui/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? customTitle;
  final bool showSearchField;
  final TextEditingController? searchController;
  final VoidCallback? onSearchTap;
  final FocusNode? focusNode;
  final Function(String)? onSubmitted;

  const CustomAppBar({
    super.key,
    this.title,
    this.customTitle,
    this.showSearchField = false,
    this.searchController,
    this.onSearchTap,
    this.focusNode,
    this.onSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: showSearchField ? AppColors.appBarColor : AppColors.backgroundColor,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      foregroundColor: AppColors.whiteColor,
      title: showSearchField
          ? Container(
              margin: const EdgeInsets.only(top: 8),
              height: 44,
              decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: TextField(
                onSubmitted: onSubmitted,
                onTap: onSearchTap,
                controller: searchController,
                focusNode: focusNode,
                showCursor: true,
                cursorColor: AppColors.greyColor,
                style: AppTextStyle.titleTextStyle,
                decoration: const InputDecoration(
                  hintText: 'Buscar',
                  hintStyle: TextStyle(fontFamily: 'DMSans-Medium', color: AppColors.greyColor),
                  suffixIcon: Icon(Icons.search, color: AppColors.appBarColor, size: 24),
                  contentPadding: EdgeInsets.symmetric(vertical: 11, horizontal: 12),
                  border: InputBorder.none,
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
