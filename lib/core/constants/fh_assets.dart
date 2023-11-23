// ignore_for_file: unused_element

class FHAssets {
  static const String _baseSvg = "assets/svgs/";

  static String _getSvgPath(String pathName) {
    pathName = "$pathName.svg";
    return _baseSvg + pathName;
  }

  static const String _baseImage = "assets/pngs/";

  static String _getImagePath(String pathName) {
    pathName = "$pathName.png";
    return _baseImage + pathName;
  }

  ///SVGs
  static final logos = _getSvgPath('logo');
  static final facebook = _getSvgPath('facebook');
  static final google = _getSvgPath('google');

  /// PNGs
  static final background = _getImagePath('background');
  static final e1 = _getImagePath('e1');
  static final e2 = _getImagePath('e2');
  static final e3 = _getImagePath('e3');
}
