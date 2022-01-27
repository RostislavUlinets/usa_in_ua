import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:usa_in_ua/blocs/auth/auth_bloc.dart';
import 'package:usa_in_ua/injection.dart';
import 'package:usa_in_ua/pages/splash/splash_screen.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //top bar color
    ));

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        fontFamily: 'lato',
      ),
      initialRoute: SpalshScreen.routeName,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
