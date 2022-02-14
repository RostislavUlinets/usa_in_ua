import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/src/provider.dart';
import 'package:usa_in_ua/blocs/auth/auth_bloc.dart';
import 'package:usa_in_ua/resources/app_colors.dart';
import 'package:usa_in_ua/resources/app_icons.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _passwordVisible = true;

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
              onChanged: (value) => context.read<AuthBloc>().add(
                    AuthEvent.passwordChanged(value),
                  ),
              validator: (_) =>
                  context.read<AuthBloc>().state.password.value.fold(
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
    );
  }
}
