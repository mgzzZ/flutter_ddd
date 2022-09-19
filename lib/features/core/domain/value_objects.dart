import 'package:dartz/dartz.dart';
import 'package:flutter_ddd/features/core/domain/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;
  const ValueObject();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
