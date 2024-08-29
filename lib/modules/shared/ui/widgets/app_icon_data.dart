class AppIconData {
  final String _path;
  AppIconData._(this._path);

  static final AppIconData home = AppIconData._('assets/icons/home.svg');
  static final AppIconData category = AppIconData._('assets/icons/category.svg');
  static final AppIconData add = AppIconData._('assets/icons/new.svg');
  static final AppIconData favorites = AppIconData._('assets/icons/favorites.svg');
  static final AppIconData profile = AppIconData._('assets/icons/profile.svg');

  @override
  String toString() => _path;
}
