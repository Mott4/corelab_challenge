import 'package:corelab_challenge/modules/dashboard/view/dashboard_view.dart';
import 'package:corelab_challenge/modules/dashboard/view_model/dashboard_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:provider/provider.dart';

class DashboardModule extends Module {
  // recebe outros Módulos
  @override
  List<Module> get imports => [];

  // Exporta controllers etc
  @override
  void exportedBinds(Injector i) {}

  // instancia os controllers
  @override
  void binds(Injector i) {
    i.addLazySingleton((context) => DashboardController());
  }

  // método onde gerencia as rotas desse Módulo
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => DashBoardView(controller: Provider.of(context, listen: false)),
    );
  }
}
