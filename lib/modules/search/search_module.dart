import 'package:corelab_challenge/modules/search/view/search_result_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../core/constants/app_routes.dart';

class SearchModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(AppRoutes.searchResult, child: (context) => const SearchResultView());
  }
}
