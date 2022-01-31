part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required PhoneNumber phoneNumber,
    required Password password,
    required EmailAddress emailAddress,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    String? verificationCode,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        phoneNumber: PhoneNumber(''),
        password: Password(''),
        emailAddress: EmailAddress(''),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
