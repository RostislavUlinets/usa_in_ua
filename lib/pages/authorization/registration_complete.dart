import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/resources/app_image.dart';

class RegistrationComplete extends StatefulWidget {
  static const String routeName = '/registrationComplete';

  const RegistrationComplete({Key? key}) : super(key: key);

  @override
  State<RegistrationComplete> createState() => _RegistrationCompleteState();
}

class _RegistrationCompleteState extends State<RegistrationComplete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppImage.regComplite),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: AppColors.text,
                      fontFamily: 'lato',
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Добро пожаловать\nв мир шопинга\nвместе с ',
                      ),
                      TextSpan(text: 'USA'),
                      TextSpan(
                        text: 'in',
                        style: TextStyle(
                          color: AppColors.green,
                        ),
                      ),
                      TextSpan(text: 'UA!'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Логин и пароль был отправлен на Ваш\ne-mail. Если пароль не получен, проверьте\nпапку “СПАМ”',
                  style: TextStyle(
                    color: AppColors.text,
                    fontFamily: 'lato',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      'Продолжить',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                        color: AppColors.buttonText,
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.green,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.green.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset:
                              const Offset(0, 8), // changes position of shadow
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
