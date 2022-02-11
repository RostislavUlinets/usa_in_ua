part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChanged;
  const factory AuthEvent.emailChanged(String email) = EmailChanged;
  const factory AuthEvent.passwordChanged(String password) = PasswordChanged;
  const factory AuthEvent.userNameChanged(String userName) = UserNameChanged;

  const factory AuthEvent.verifyPhoneNumber() = VerifyPhoneNumber;
  const factory AuthEvent.verifyOTP(String otpCode) = VerifyOTP;
  const factory AuthEvent.linkEmailWithPhone() = LinkEmailWithPhone;
  const factory AuthEvent.signInWithPhoneNumberAndPasswordPressed() =
      SignInWithPhoneNumberAndPasswordPressed;
  const factory AuthEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  const factory AuthEvent.restorePassword(String contactInfo) = RestorePassword;
}
