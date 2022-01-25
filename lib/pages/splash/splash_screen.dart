import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usa_in_ua/pages/authorization/login_screen.dart';
import 'package:usa_in_ua/resources/app_image.dart';

class SpalshScreen extends StatelessWidget {
  static const String routeName = '/splash_screen';

  const SpalshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushNamed(context, LoginScreen.routeName);
      },
    );

    return Scaffold(
      body: Center(
        child: AppImage.logo,
      ),
    );
  }
}
