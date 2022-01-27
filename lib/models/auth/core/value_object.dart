import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:usa_in_ua/models/auth/core/errors.dart';
import 'package:usa_in_ua/models/auth/core/failures.dart';


@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    // id = (right) => right
    return value.fold(
      (l) => throw UnexpectedValueError(l),
      id,
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}