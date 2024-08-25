import 'package:corelab_challenge/core/constants/app_routes.dart';

import '../../pages/widgets/app_icon_data.dart';

enum Pages {
  dashboard(AppRoutes.initial),
  categories(AppRoutes.category),
  announce('/announce/'),
  favorites('/favorites/'),
  account('/account/'),
  search(AppRoutes.search),
  none(AppRoutes.notFound);

  final String _path;

  const Pages(this._path);

  AppIconData get icon => switch (this) {
        Pages.dashboard => AppIconData.home,
        Pages.categories => AppIconData.category,
        Pages.announce => AppIconData.add,
        Pages.favorites => AppIconData.favorites,
        Pages.account => AppIconData.profile,
        _ => AppIconData.home,
      };

  String get title => switch (this) {
        Pages.dashboard => 'Home',
        Pages.categories => 'Categorias',
        Pages.announce => 'Anunciar',
        Pages.favorites => 'Favoritos',
        Pages.account => 'Conta',
        _ => 'Home',
      };

  @override
  String toString() => _path;
}
