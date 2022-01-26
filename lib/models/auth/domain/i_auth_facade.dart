import 'package:dartz/dartz.dart';
import 'package:usa_in_ua/models/auth/domain/auth_failure.dart';
import 'package:usa_in_ua/models/auth/domain/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithPhoneNumber({
    required PhoneNumber phoneNumber,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required PhoneNumber phoneNumber,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}