import 'package:dartz/dartz.dart';
import 'package:usa_in_ua/models/auth/core/failures.dart';
import 'package:usa_in_ua/models/auth/core/value_object.dart';
import 'package:usa_in_ua/models/auth/core/value_validators.dart';

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      validationPhoneNumber(input),
    );
  }

  const PhoneNumber._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}