import 'package:flutter/material.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/resources/app_icons.dart';

class RestorePassword extends StatefulWidget {
  static const String routeName = '/restorePassword';

  const RestorePassword({Key? key}) : super(key: key);

  @override
  State<RestorePassword> createState() => _RestorePasswordState();
}

class _RestorePasswordState extends State<RestorePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 50.0,
          horizontal: 30.0,
        ),
        child: ListView(
          children: [
            const Text(
              'Вход',
              style: TextStyle(
                color: AppColors.text,
                fontSize: 40,
                letterSpacing: 0.5,
                fontFamily: 'lato',
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Введите эл. почту или телефон',
              style: TextStyle(
                fontFamily: 'lato',
                fontWeight: FontWeight.w800,
                color: AppColors.blue,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 40.0,
                bottom: 10,
              ),
              child: Column(
                children: [
                  Container(
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Ваш email или телефон*',
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
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Напомнить пароль',
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
                            offset: const Offset(
                                0, 8), // changes position of shadow
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        AppIcons.password,
                        const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Я уже зарегистрирован',
                            style: TextStyle(
                              color: AppColors.text,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
