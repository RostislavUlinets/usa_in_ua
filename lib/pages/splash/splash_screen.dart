import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpalshScreen extends StatelessWidget {
  static const String routeName = '/splash_screen';

  const SpalshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      // Navigator.of(context, rootNavigator: true).pushNamedAndRemoveUntil(
      //   Initilizer.routeName,
      //   (route) => false,
      // );
    });

    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/image/logo.svg',
        ),
      ),
    );
  }
}
