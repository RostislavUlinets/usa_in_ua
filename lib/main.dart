import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:usa_in_ua/pages/splash/splash_screen.dart';
import 'package:usa_in_ua/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
    ));

    return const MaterialApp(
      initialRoute: SpalshScreen.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
