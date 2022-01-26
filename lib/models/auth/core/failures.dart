import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidPhoneNumber({
    required String failedValue,
  }) = InvalidPhoneNumber<T>;
  const factory ValueFailure.shortPassword({
    required String failedValue,
  }) = ShortPassword<T>;
}