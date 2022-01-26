import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  AppIcons._();

  static const String _path = 'assets/icons';

  static SvgPicture viewer = SvgPicture.asset('$_path/viewer.svg');
  static SvgPicture locker = SvgPicture.asset('$_path/lock.svg');
  static SvgPicture addUser = SvgPicture.asset('$_path/add_user.svg');
  static SvgPicture googleLogo = SvgPicture.asset('$_path/google_logo.svg');
  static SvgPicture facebookLogo = SvgPicture.asset('$_path/facebook_logo.svg');
  static SvgPicture password = SvgPicture.asset('$_path/password.svg');
}
