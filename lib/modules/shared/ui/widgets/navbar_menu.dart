import 'package:corelab_challenge/modules/shared/ui/widgets/app_icon_data.dart';
import 'package:corelab_challenge/modules/shared/ui/widgets/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../enums/pages_enum.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_style.dart';

class NavBarMenu extends StatelessWidget {
  final Pages page;
  const NavBarMenu({super.key, required this.page});

  void _pushNamedAndRemoveUntilTo(Pages page) {
    Modular.to.pushNamedAndRemoveUntil(
      page.toString(),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final shadow = [
      const BoxShadow(
        blurRadius: 20,
        offset: Offset(0, 2),
        color: AppColors.shadowColor,
      ),
    ];

    return Container(
      height: 76,
      padding: const EdgeInsets.only(bottom: 16, top: 8),
      decoration: BoxDecoration(
        boxShadow: shadow,
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          Pages.values.length - 2,
          (index) => InferiorButtons(
            iconPath: Pages.values[index].icon,
            title: Pages.values[index].title,
            actualPage: page,
            page: Pages.values[index],
            onTap: _pushNamedAndRemoveUntilTo,
          ),
        ),
      ),
    );
  }
}

class InferiorButtons extends StatelessWidget {
  final AppIconData iconPath;
  final String title;
  final Pages actualPage;
  final Pages page;
  final void Function(Pages) onTap;

  const InferiorButtons({
    super.key,
    required this.iconPath,
    required this.title,
    required this.actualPage,
    required this.page,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color foregroundColor = AppColors.greyColor;

    if (page == actualPage) foregroundColor = AppColors.appBarColor;

    return InkWell(
      onTap: () => onTap(page),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcons(iconPath, color: foregroundColor, size: 32),
          Text(
            title,
            style: AppTextStyle.inferiorMenuTitle.copyWith(color: foregroundColor),
          ),
        ],
      ),
    );
  }
}
