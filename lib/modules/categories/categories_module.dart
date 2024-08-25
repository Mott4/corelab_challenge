import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

import 'view/category_view.dart';

class CategoriesModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => CategoryView(controller: Provider.of(context, listen: false)),
    );
  }
}
