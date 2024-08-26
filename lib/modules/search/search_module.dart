import 'package:flutter_modular/flutter_modular.dart';

import 'view/seach_view.dart';

class SearchModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => const SearchView());
  }
}
