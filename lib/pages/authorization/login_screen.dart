import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:usa_in_ua/blocs/auth/auth_bloc.dart';
import 'package:usa_in_ua/pages/authorization/otp_screen.dart';
import 'package:usa_in_ua/pages/authorization/registration_complete.dart';
import 'package:usa_in_ua/pages/authorization/registration_screen.dart';
import 'package:usa_in_ua/pages/authorization/restore_password.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/resources/app_icons.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = '/login_screen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = true;

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
              Navigator.pushReplacementNamed(
                context,
                RegistrationComplete.routeName,
              );
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
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 5.0),
                            child: TextFormField(
                              style: const TextStyle(
                                color: AppColors.text,
                                fontSize: 14,
                                fontFamily: 'lato',
                                letterSpacing: 1,
                              ),
                              toolbarOptions: const ToolbarOptions(
                                paste: true,
                                cut: true,
                                selectAll: true,
                                copy: true,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Ваш Номер телефона*',
                                hintStyle: TextStyle(
                                  color: AppColors.notActive,
                                  fontSize: 14,
                                  fontFamily: 'lato',
                                  letterSpacing: 1,
                                ),
                              ),
                              onChanged: (value) =>
                                  context.read<AuthBloc>().add(
                                        AuthEvent.phoneNumberChanged(value),
                                      ),
                              validator: (_) => context
                                  .read<AuthBloc>()
                                  .state
                                  .phoneNumber
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      invalidPhoneNumber: (_) =>
                                          'Invalid PhoneNumber',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
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
                            child: TextFormField(
                              style: const TextStyle(
                                color: AppColors.text,
                                fontSize: 14,
                                fontFamily: 'lato',
                                letterSpacing: 1,
                              ),
                              obscureText: _passwordVisible,
                              toolbarOptions: const ToolbarOptions(
                                paste: true,
                                cut: true,
                                selectAll: true,
                                copy: true,
                              ),
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
                                  icon: _passwordVisible
                                      ? SvgPicture.asset(AppIcons.showPassword)
                                      : SvgPicture.asset(AppIcons.hidePassword),
                                  onPressed: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                ),
                              ),
                              onChanged: (value) =>
                                  context.read<AuthBloc>().add(
                                        AuthEvent.passwordChanged(value),
                                      ),
                              validator: (_) => context
                                  .read<AuthBloc>()
                                  .state
                                  .password
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                      shortPassword: (_) => 'Short Password',
                                      orElse: () => null,
                                    ),
                                    (_) => null,
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
                    onTap: () {
                      context.read<AuthBloc>().add(
                            const AuthEvent
                                .signInWithPhoneNumberAndPasswordPressed(),
                          );
                    },
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
                    padding: const EdgeInsets.only(top: 30.0, bottom: 60),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              RestoringPassword.routeName,
                            );
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.locker),
                              const Padding(
                                padding: EdgeInsets.all(15.0),
                                child: Text(
                                  'Напомнить пароль',
                                  style: TextStyle(
                                    color: AppColors.text,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              RegistrationScreen.routeName,
                            );
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(AppIcons.addUser),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15.0),
                                child: Text(
                                  'Зарегистрироваться',
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
