import 'package:flutter/material.dart';
import 'dart:async';

import 'package:usa_in_ua/resources/app_colors.dart';

class ResendOTP extends StatefulWidget {
  const ResendOTP({Key? key}) : super(key: key);

  @override
  State<ResendOTP> createState() => _ResendOTPState();
}

class _ResendOTPState extends State<ResendOTP> {
  late Timer _timer;
  int _start = 30;

  @override
  void initState() {
    initializeTimer();
    super.initState();
  }

  void initializeTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _start != 0
        ? Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
              children: [
                const Text(
                  'Отправить код повторно через: ',
                  style: TextStyle(
                    color: AppColors.text,
                    fontFamily: 'lato',
                  ),
                ),
                Text(
                  "$_start",
                  style: const TextStyle(
                    fontFamily: 'lato',
                    fontWeight: FontWeight.w800,
                    color: AppColors.text,
                  ),
                ),
              ],
            ),
        )
        : TextButton(
            onPressed: () {
              setState(() {
                _start = 30;
                initializeTimer();
              });
            },
            child: const Text(
              'Отправить код повторно',
              style: TextStyle(
                fontFamily: 'lato',
                fontWeight: FontWeight.w800,
                color: AppColors.text,
              ),
            ),
          );
  }
}
