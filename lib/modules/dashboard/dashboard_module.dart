import 'package:corelab_challenge/modules/dashboard/view/dashboard_view.dart';
import 'package:corelab_challenge/modules/dashboard/view_model/dashboard_view_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DashboardModule extends Module {
  _controller(Injector i) {
    i.addLazySingleton(DashboardViewModel.new);
  }

  @override
  void binds(Injector i) {
    _controller(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => DashBoardView(controller: Modular.get()));
  }
}
