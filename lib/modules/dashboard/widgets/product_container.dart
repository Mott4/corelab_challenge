import 'package:corelab_challenge/modules/shared/app_text_style.dart';
import 'package:corelab_challenge/modules/shared/extensions/convert_to_brl.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../model/product_model.dart';
import '../../shared/app_colors.dart';

class ProductContainer extends StatelessWidget {
  final ProductModel item;
  const ProductContainer({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: AppColors.whiteColor, border: Border.all(color: AppColors.borderColor)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.height / 6,
                      child: Image.asset('assets/not-found/not_found.png'),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (item.promotionPercentage != null)
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(4)),
                              color: AppColors.appBarColor,
                            ),
                            child: Text(
                              '${item.promotionPercentage.toString()}% OFF',
                              style: AppTextStyle.promotionTextStyle,
                            ),
                          ),
                        const SizedBox(height: 6),
                        Text(
                          item.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.titleTextStyle,
                        ),
                        const SizedBox(height: 6),
                        if (item.promotionPercentage != null)
                          Text(
                            item.oldPrice!.convertToBRL(),
                            style: AppTextStyle.oldPriceTextStyle,
                          ),
                        Text(
                          item.price.convertToBRL(),
                          style: AppTextStyle.priceTextStyle,
                        ),
                        Text(
                          item.itemDescription,
                          style: AppTextStyle.descriptionTextStyle,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item.itemState.toUpperCase(),
                          style: AppTextStyle.itemStateTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
