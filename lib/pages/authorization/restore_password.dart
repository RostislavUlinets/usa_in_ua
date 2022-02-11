import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usa_in_ua/blocs/auth/auth_bloc.dart';
import 'package:usa_in_ua/pages/authorization/login_screen.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/resources/app_icons.dart';

class RestoringPassword extends StatefulWidget {
  static const String routeName = '/restorePassword';

  const RestoringPassword({Key? key}) : super(key: key);

  @override
  State<RestoringPassword> createState() => _RestoringPasswordState();
}

class _RestoringPasswordState extends State<RestoringPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  phoneNumberAlreadyInUse: (_) => 'Phone number already in use',
                  invalidPhoneNumberAndPasswordCombination: (_) =>
                      'Invalid phone number and password combination',
                ),
              ).show(context);
            },
            (_) {},
          ),
        );
      },
      builder: (context, state) {
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5.0),
                          child: TextField(
                            controller: _controller,
                            decoration: const InputDecoration(
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
                        onTap: () {
                          context.read<AuthBloc>().add(
                                AuthEvent.restorePassword(_controller.text),
                              );
                        },
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
                        onTap: () {
                          Navigator.pushNamed(context, LoginScreen.routeName);
                        },
                        child: Row(
                          children: [
                            SvgPicture.asset(AppIcons.password),
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
      },
    );
  }
}
