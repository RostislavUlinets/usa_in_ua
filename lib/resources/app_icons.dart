import 'package:flutter_svg/flutter_svg.dart';


//change to path.
class AppIcons {
  AppIcons._();

  static const String _path = 'assets/icons/';

  static SvgPicture viewer = SvgPicture.asset('$_path/viewer.svg');
  static const String showPassword = _path + 'show.svg';
  static const String hidePassword = _path + 'hide.svg';
  static const String locker = _path + 'lock.svg';
  static const String addUser = _path + 'add_user.svg';
  static const String googleLogo = _path + 'google_logo.svg';
  static const String facebookLogo = _path + 'facebook_logo.svg';
  static const String password = _path + 'password.svg';
}
