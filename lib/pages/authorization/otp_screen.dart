import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usa_in_ua/blocs/auth/auth_bloc.dart';
import 'package:usa_in_ua/pages/authorization/registration_screen.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/resources/app_icons.dart';

import 'widgets/otp_widget.dart';

class OtpScreen extends StatelessWidget {
  static const String routeName = '/OtpScreen';

  const OtpScreen({Key? key}) : super(key: key);

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
            (_) {},
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            child: Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 70.0),
                    child: Text(
                      'Код\nподтверждения',
                      style: TextStyle(
                        color: AppColors.text,
                        fontSize: 40,
                        letterSpacing: 0.5,
                        fontFamily: 'lato',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  const Text(
                    'Смс с кодом отправленно на номер:\n+38 063 058 8512',
                    style: TextStyle(
                      fontFamily: 'lato',
                      fontWeight: FontWeight.w800,
                      color: AppColors.blue,
                      fontSize: 16,
                    ),
                  ),
                  Otp(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        context.read<AuthBloc>().add(
                              const AuthEvent.verifyPhoneNumber(),
                            );
                        Navigator.pushNamed(context, OtpScreen.routeName);
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
                  ),
                  Row(
                    children: const [
                      Text(
                        'Отправить код повторно через: ',
                        style: TextStyle(
                          color: AppColors.text,
                          fontFamily: 'lato',
                        ),
                      ),
                    ],
                  ),
                  Row(
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
