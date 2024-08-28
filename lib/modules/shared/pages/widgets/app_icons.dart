import 'package:flutter/material.dart';

import '../../app_colors.dart';
import 'app_icon_data.dart';

class AppIcons extends StatelessWidget {
  final AppIconData icon;
  final Color? color;
  final double size;
  const AppIcons(this.icon, {super.key, this.color, this.size = 24});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon.toString(),
      color: color ?? AppColors.appBarColor,
      height: size,
      width: size,
    );
  }
}
