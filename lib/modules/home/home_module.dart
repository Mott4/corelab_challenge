import 'package:corelab_challenge/core/constants/app_routes.dart';
import 'package:corelab_challenge/modules/home/view/home_page_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  // recebe outros Módulos
  @override
  List<Module> get imports => [];

  // Exporta controllers etc
  @override
  void exportedBinds(Injector i) {}

  // método onde gerencia as rotas desse Módulo
  @override
  void routes(RouteManager r) {
    r.child(AppRoutes.initial, child: (context) => const HomeView());
  }
}
