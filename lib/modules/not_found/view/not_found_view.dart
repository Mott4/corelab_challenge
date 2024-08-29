import 'package:corelab_challenge/modules/shared/ui/theme/app_colors.dart';
import 'package:corelab_challenge/modules/shared/ui/widgets/navbar_menu.dart';
import 'package:flutter/material.dart';

import '../../shared/enums/pages_enum.dart';
import '../../shared/ui/widgets/not_found_message.dart';

class NotFoundView extends StatelessWidget {
  const NotFoundView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: AppColors.whiteColor),
      body: const Center(
        child: NotFoundMessage(),
      ),
      bottomNavigationBar: const NavBarMenu(page: Pages.none),
    );
  }
}
