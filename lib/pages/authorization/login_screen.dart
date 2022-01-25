import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/resources/app_icons.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 70.0,
          horizontal: 30.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Вход',
              style: TextStyle(
                color: AppColors.text,
                fontSize: 40,
                letterSpacing: 0.5,
                fontFamily: 'lato',
                fontWeight: FontWeight.w800,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Column(
                children: [
                  Container(
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ваш Номер телефона*',
                          hintStyle: TextStyle(
                            color: AppColors.notActive,
                            fontSize: 14,
                            fontFamily: 'lato',
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.base,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ваш пороль*',
                          hintStyle: const TextStyle(
                            color: AppColors.notActive,
                            fontSize: 14,
                            fontFamily: 'lato',
                            letterSpacing: 1,
                          ),
                          suffixIcon: IconButton(
                            iconSize: 14,
                            icon: SvgPicture.asset('assets/icons/viewer.svg'),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.base,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                child: const Text(
                  'Войти',
                  style: TextStyle(
                    fontFamily: 'lato',
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1,
                    color: AppColors.buttonText,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
