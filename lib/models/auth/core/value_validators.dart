import 'package:dartz/dartz.dart';
import 'package:usa_in_ua/models/auth/core/failures.dart';

Either<ValueFailure<String>, String> validationPhoneNumber(String input) {
  const phoneNumberRegex = r'(^(?:[+]9)?[0-9]{10,12}$)';

  if (RegExp(phoneNumberRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
      ValueFailure.invalidPhoneNumber(failedValue: input),
    );
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
