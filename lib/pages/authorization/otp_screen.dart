import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:usa_in_ua/blocs/auth/auth_bloc.dart';
import 'package:usa_in_ua/pages/authorization/login_screen.dart';
import 'package:usa_in_ua/pages/authorization/registration_complete.dart';
import 'package:usa_in_ua/pages/authorization/widgets/resend_otp.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/resources/app_icons.dart';

class OtpScreen extends StatefulWidget {
  static const String routeName = '/OtpScreen';

  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String currentText = "";

  @override
  void initState() {
    super.initState();
  }

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
              FlushbarHelper.createSuccess(
                      message: 'Регистрация прошла успешно')
                  .show(context);
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.pushReplacementNamed(
                  context,
                  RegistrationComplete.routeName,
                );
              });
            },
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
                  Text(
                    'Смс с кодом отправленно на номер:\n${state.phoneNumber.getOrCrash()}',
                    style: const TextStyle(
                      fontFamily: 'lato',
                      fontWeight: FontWeight.w800,
                      color: AppColors.blue,
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: PinCodeTextField(
                      textStyle: const TextStyle(
                        fontSize: 36,
                        fontFamily: 'lato',
                        fontWeight: FontWeight.w800,
                        color: AppColors.text,
                      ),
                      backgroundColor: Colors.white,
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Colors.green.shade600,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 6,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.underline,
                        borderWidth: 3,
                        borderRadius: BorderRadius.circular(5),
                        fieldHeight: 50,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        inactiveColor: AppColors.notActive,
                        activeColor: AppColors.text,
                        selectedFillColor: Colors.white,
                        selectedColor: AppColors.text,
                      ),
                      cursorColor: Colors.black,
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        setState(
                          () {
                            currentText = value;
                          },
                        );
                      },
                      beforeTextPaste: (text) {
                        return true;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        context.read<AuthBloc>().add(
                              AuthEvent.verifyOTP(currentText),
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
                  ),
                  const ResendOTP(),
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.password),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, LoginScreen.routeName);
                          },
                          child: const Text(
                            'Я уже зарегистрирован',
                            style: TextStyle(
                              color: AppColors.text,
                              fontWeight: FontWeight.w800,
                            ),
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
