import 'package:dartz/dartz.dart';
import 'package:usa_in_ua/models/auth/domain/auth_failure.dart';
import 'package:usa_in_ua/models/auth/domain/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> generateEmailAccount({
    required EmailAddress emailAddress,
    required String password,
  });
  Future<Either<AuthFailure, String>> verifyPhoneNumber({
    required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, Unit>> confirmOTP({
    required String verificationCode,
    required List<String> otpCode,
  });
  Future<Either<AuthFailure, Unit>> signInWithPhoneNumberAndPassword({
    required PhoneNumber phoneNumber,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Either<AuthFailure, Unit>> restorePassword({
    required String contactInfo,
  });
}
