import 'package:flutter_svg/flutter_svg.dart';

class AppImage {
  AppImage._();

  static const String _path = 'assets/image/';

  static SvgPicture logo = SvgPicture.asset(
    'assets/image/logo.svg',
  );
  static const String regComplite = _path + 'reg_complete.svg';
}
