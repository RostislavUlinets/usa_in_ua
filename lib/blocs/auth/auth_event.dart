part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChanged;
  const factory AuthEvent.emailChanged(String email) = EmailChanged;
  const factory AuthEvent.passwordChanged(String password) = PasswordChanged;
  const factory AuthEvent.registerWithPhoneNumberPressed() =
      RegisterWithPhoneNumberPressed;
  const factory AuthEvent.signInWithPhoneNumberAndPasswordPressed() =
      SignInWithPhoneNumberAndPasswordPressed;
  const factory AuthEvent.signInWithGooglePressed() = SignInWithGooglePressed;
}
