import 'package:corelab_challenge/modules/search/view/search_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SearchModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const SearchView());
  }
}
