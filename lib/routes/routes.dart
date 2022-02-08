import 'package:flutter/material.dart';
import 'package:usa_in_ua/pages/authorization/login_screen.dart';
import 'package:usa_in_ua/pages/authorization/otp_screen.dart';
import 'package:usa_in_ua/pages/authorization/registration_complete.dart';
import 'package:usa_in_ua/pages/authorization/registration_screen.dart';
import 'package:usa_in_ua/pages/authorization/restore_password.dart';
import 'package:usa_in_ua/pages/splash/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SpalshScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const SpalshScreen(),
        );
      case LoginScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case RegistrationScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const RegistrationScreen(),
        );
      case OtpScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const OtpScreen(),
        );
      case RestorePassword.routeName:
        return MaterialPageRoute(
          builder: (context) => const RestorePassword(),
        );
      case RegistrationComplete.routeName:
        return MaterialPageRoute(
          builder: (context) => const RegistrationComplete(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("ERROR"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("PAGE NOT FOUND!"),
        ),
      );
    });
  }
}
