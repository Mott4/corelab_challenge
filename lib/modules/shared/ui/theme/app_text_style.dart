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

  // Categories TextStyles =====================================================
  static const TextStyle categoryTitle = TextStyle(
    color: AppColors.appBarColor,
    fontSize: 20,
    fontFamily: 'DMSans-Regular',
  );

  // NavBar Menu TextStyles ====================================================
  static const TextStyle inferiorMenuTitle = TextStyle(
    color: AppColors.appBarColor,
    fontSize: 10,
    fontFamily: 'DMSans-Regular',
  );

  // Not Found TextStyles ======================================================
  static const TextStyle notFoundTitle = TextStyle(
    fontFamily: 'DmSans-Bold',
    fontSize: 18,
    color: AppColors.titleColor,
  );

  static const TextStyle notFoundSubtitle = TextStyle(
    fontFamily: 'DmSans-Regular',
    fontSize: 14,
    color: AppColors.deepSpaceSparkle,
  );

  // Search TextStyles =========================================================
  static const TextStyle searchHistoricTitle = TextStyle(
    fontFamily: 'DmSans-Regular',
    fontSize: 18,
    color: AppColors.greyColor,
  );
}
