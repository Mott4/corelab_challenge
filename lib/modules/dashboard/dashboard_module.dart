import 'package:corelab_challenge/core/services/repositories/dashboard_repository.dart';
import 'package:corelab_challenge/modules/dashboard/view/dashboard_view.dart';
import 'package:corelab_challenge/modules/dashboard/view_model/dashboard_view_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../app_module.dart';

class DashboardModule extends Module {
  @override
  List<Module> get imports => [AppModule()];

  void _repository(Injector i) {
    i.add<IDashboardRepository>(DashboardRepository.new);
  }

  _controller(Injector i) {
    i.addLazySingleton(DashboardViewModel.new);
  }

  @override
  void binds(Injector i) {
    _controller(i);
    _repository(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => DashBoardView(controller: Modular.get<DashboardViewModel>()));
  }
}
