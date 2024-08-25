class AppIconData {
  final String _path;
  AppIconData._(this._path);

  static final AppIconData home = AppIconData._('assets/icons/home.png');
  static final AppIconData category = AppIconData._('assets/icons/category.png');
  static final AppIconData add = AppIconData._('assets/icons/new.png');
  static final AppIconData favorites = AppIconData._('assets/icons/favorites.png');
  static final AppIconData profile = AppIconData._('assets/icons/profile.png');

  @override
  String toString() => _path;
}
