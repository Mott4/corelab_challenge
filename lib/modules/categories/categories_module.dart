import 'package:corelab_challenge/modules/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/services/repositories/categories_repository.dart';
import 'view/category_view.dart';
import 'view_model/category_view_model.dart';

class CategoriesModule extends Module {
  @override
  List<Module> get imports => [AppModule()];

  void _repository(Injector i) {
    i.add<ICategoriesRepository>(CategoriesRepository.new);
  }

  void _controller(Injector i) {
    i.addLazySingleton(CategoryViewModel.new);
  }

  @override
  void binds(Injector i) {
    _repository(i);
    _controller(i);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => CategoryView(controller: Modular.get<CategoryViewModel>()),
    );
  }
}
