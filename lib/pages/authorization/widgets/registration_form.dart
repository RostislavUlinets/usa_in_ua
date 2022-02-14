import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:usa_in_ua/blocs/auth/auth_bloc.dart';
import 'package:usa_in_ua/resources/app_colors.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: TextFormField(
              style: const TextStyle(
                color: AppColors.text,
                fontSize: 16,
                fontFamily: 'lato',
                letterSpacing: 1,
                fontWeight: FontWeight.w800,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Ваше имя*',
                labelStyle: TextStyle(
                  color: AppColors.notActive,
                  fontSize: 14,
                  fontFamily: 'lato',
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onChanged: (value) => context.read<AuthBloc>().add(
                    AuthEvent.userNameChanged(value),
                  ),
              validator: (_) =>
                  context.read<AuthBloc>().state.userName.value.fold(
                        (f) => f.maybeMap(
                          invalidUserName: (_) => 'Incorrect Name',
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
              horizontal: 15.0,
              vertical: 5.0,
            ),
            child: TextFormField(
              style: const TextStyle(
                color: AppColors.text,
                fontSize: 16,
                fontFamily: 'lato',
                letterSpacing: 1,
                fontWeight: FontWeight.w800,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Ваш email*',
                labelStyle: TextStyle(
                  color: AppColors.notActive,
                  fontSize: 14,
                  fontFamily: 'lato',
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onChanged: (value) => context.read<AuthBloc>().add(
                    AuthEvent.emailChanged(value),
                  ),
              validator: (_) =>
                  context.read<AuthBloc>().state.emailAddress.value.fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email Address',
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
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
            child: TextFormField(
              style: const TextStyle(
                color: AppColors.text,
                fontSize: 16,
                fontFamily: 'lato',
                letterSpacing: 1,
                fontWeight: FontWeight.w800,
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
                labelText: 'Ваш Номер телефона*',
                labelStyle: TextStyle(
                  color: AppColors.notActive,
                  fontSize: 14,
                  fontFamily: 'lato',
                  letterSpacing: 1,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onChanged: (value) => context.read<AuthBloc>().add(
                    AuthEvent.phoneNumberChanged(value),
                  ),
              validator: (_) =>
                  context.read<AuthBloc>().state.phoneNumber.value.fold(
                        (f) => f.maybeMap(
                          invalidPhoneNumber: (_) => 'Invalid PhoneNumber',
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
    );
  }
}
