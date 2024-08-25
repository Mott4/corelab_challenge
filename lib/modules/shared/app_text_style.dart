import 'package:flutter/widgets.dart';
import 'app_colors.dart';

abstract class AppTextStyle {
  // Product TextStyles ========================================================
  static const TextStyle promotionTextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 12,
    fontFamily: 'DMSans-Medium',
  );

  static const TextStyle titleTextStyle = TextStyle(
    color: AppColors.titleColor,
    fontSize: 16,
    fontFamily: 'DMSans-Medium',
  );

  static const TextStyle oldPriceTextStyle = TextStyle(
    color: AppColors.greyColor,
    fontSize: 14,
    fontFamily: 'DMSans-Medium',
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColors.greyColor,
  );

  static const TextStyle priceTextStyle = TextStyle(
    color: AppColors.titleColor,
    fontSize: 20,
    fontFamily: 'DMSans-Bold',
  );

  static const TextStyle descriptionTextStyle = TextStyle(
    color: AppColors.appBarColor,
    fontSize: 14,
    fontFamily: 'DMSans-Medium',
  );

  static const TextStyle itemStateTextStyle = TextStyle(
    color: AppColors.greyColor,
    fontSize: 12,
    fontFamily: 'DMSans-Medium',
  );

  // Product TextStyles ========================================================
  static const TextStyle categoryTitle = TextStyle(
    color: AppColors.appBarColor,
    fontSize: 20,
    fontFamily: 'DMSans-Regular',
  );

  // NavBar Menu ===============================================================
  static const TextStyle inferiorMenuTitle = TextStyle(
    color: AppColors.appBarColor,
    fontSize: 10,
    fontFamily: 'DMSans-Regular',
  );
}
