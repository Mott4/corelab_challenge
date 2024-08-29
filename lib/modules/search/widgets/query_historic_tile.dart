import 'package:flutter/material.dart';

import '../../shared/ui/theme/app_colors.dart';
import '../../shared/ui/theme/app_text_style.dart';
import '../model/search_model.dart';

class QueryHistoricTile extends StatelessWidget {
  final String searchTitle;
  final Function()? onTap;
  const QueryHistoricTile({super.key, required this.searchTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: const Icon(Icons.history, color: AppColors.greyColor),
      title: Text(
        searchTitle,
        style: AppTextStyle.searchHistoricTitle,
      ),
    );
  }
}
