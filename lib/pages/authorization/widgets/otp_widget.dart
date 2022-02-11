import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:usa_in_ua/blocs/auth/auth_bloc.dart';
import 'package:usa_in_ua/resources/app_colors.dart';

const int otpSize = 6;
List<String> storage = List<String>.filled(otpSize, '');

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _textFieldOTP(
                first: true,
                last: false,
                position: 0,
              ),
              _textFieldOTP(
                first: false,
                last: false,
                position: 1,
              ),
              _textFieldOTP(
                first: false,
                last: false,
                position: 2,
              ),
              _textFieldOTP(
                first: false,
                last: false,
                position: 3,
              ),
              _textFieldOTP(
                first: false,
                last: false,
                position: 4,
              ),
              _textFieldOTP(
                first: false,
                last: true,
                position: 5,
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: GestureDetector(
              onTap: () {
                context.read<AuthBloc>().add(
                      AuthEvent.verifyOTP(storage),
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
                      offset: const Offset(0, 8), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _textFieldOTP({
    required bool first,
    last,
    required int position,
  }) {
    return SizedBox(
      height: 50,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
            log('Curent value: $value');
            storage[position] = value;
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 36,
            fontFamily: 'lato',
            fontWeight: FontWeight.w800,
            color: AppColors.text,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(width: 8, color: AppColors.base),
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(width: 6, color: AppColors.text),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
      ),
    );
  }
}
