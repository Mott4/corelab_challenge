import 'package:corelab_challenge/core/constants/app_routes.dart';
import 'package:corelab_challenge/modules/categories/categories_module.dart';
import 'package:corelab_challenge/modules/home/home_module.dart';
import 'package:corelab_challenge/modules/not_found/view/not_found_view.dart';
import 'package:corelab_challenge/modules/search/search_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(AppRoutes.initial, module: HomeModule());
    r.module(AppRoutes.category, module: CategoriesModule());
    r.module(AppRoutes.searchResult, module: SearchModule());

    // Rota de descarte (Coringa)
    r.wildcard(child: (context) => const NotFoundView());
  }
}
