import 'package:another_flushbar/flushbar_helper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usa_in_ua/blocs/auth/auth_bloc.dart';
import 'package:usa_in_ua/pages/authorization/login_screen.dart';
import 'package:usa_in_ua/pages/authorization/otp_screen.dart';
import 'package:usa_in_ua/pages/authorization/registration_complete.dart';
import 'package:usa_in_ua/pages/authorization/widgets/registration_form.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/resources/app_icons.dart';

class RegistrationScreen extends StatelessWidget {
  static const String routeName = '/registration';

  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            (_) {
              if (FirebaseAuth.instance.currentUser == null) {
                Navigator.pushReplacementNamed(
                  context,
                  OtpScreen.routeName,
                );
              } else {
                Navigator.pushReplacementNamed(
                  context,
                  RegistrationComplete.routeName,
                );
              }
            },
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
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: ListView(
                children: [
                  const Text(
                    'Регистрация',
                    style: TextStyle(
                      color: AppColors.text,
                      fontSize: 40,
                      letterSpacing: 0.5,
                      fontFamily: 'lato',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 40.0,
                      bottom: 10,
                    ),
                    child: RegistrationForm(),
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        color: AppColors.text,
                      ),
                      children: [
                        TextSpan(
                          text: 'Регистрируясь, Вы соглашаетесь с\n',
                        ),
                        TextSpan(
                          text: 'пользовательским соглашением',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<AuthBloc>().add(
                            const AuthEvent.verifyPhoneNumber(),
                          );
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      alignment: Alignment.center,
                      child: const Text(
                        'Зарегистрироваться',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 30),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              LoginScreen.routeName,
                            );
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: GestureDetector(
                      onTap: () {
                        context.read<AuthBloc>().add(
                              const AuthEvent.signInWithGooglePressed(),
                            );
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Войти как пользователь',
                                style: TextStyle(
                                  color: AppColors.text,
                                ),
                              ),
                              SvgPicture.asset(AppIcons.googleLogo),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.button,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
