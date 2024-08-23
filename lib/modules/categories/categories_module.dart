import 'package:flutter_modular/flutter_modular.dart';

import '../../core/constants/app_routes.dart';
import 'view/category_view.dart';

class CategoriesModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(AppRoutes.category, child: (context) => const CategoryView());
  }
}
