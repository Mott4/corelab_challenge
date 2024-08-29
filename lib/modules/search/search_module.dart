import 'package:corelab_challenge/core/services/repositories/search_repository.dart';
import 'package:corelab_challenge/modules/search/view_model/search_view_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'view/search_view.dart';

class SearchModule extends Module {
  void _repository(Injector i) {
    i.add<ISearchRepository>(SearchRepository.new);
  }

  void _controller(Injector i) {
    i.addLazySingleton(SearchViewModel.new);
  }

  @override
  void binds(Injector i) {
    _controller(i);
    _repository(i);
  }

  @override
  void routes(RouteManager r) {
    r.child('/', child: (context) => SearchView(controller: Modular.get()));
  }
}
