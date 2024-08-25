import 'package:corelab_challenge/core/constants/app_routes.dart';
import 'package:corelab_challenge/modules/categories/categories_module.dart';
import 'package:corelab_challenge/modules/dashboard/dashboard_module.dart';
import 'package:corelab_challenge/modules/not_found/view/not_found_view.dart';
import 'package:corelab_challenge/modules/search/search_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(
      AppRoutes.initial,
      module: DashboardModule(),
      transition: TransitionType.noTransition,
    );
    r.module(
      AppRoutes.category,
      module: CategoriesModule(),
      transition: TransitionType.noTransition,
    );
    r.module(
      AppRoutes.search,
      module: SearchModule(),
      transition: TransitionType.noTransition,
    );

    // Rota de descarte (Coringa)
    r.wildcard(child: (context) => const NotFoundView(), transition: TransitionType.noTransition);
  }
}
