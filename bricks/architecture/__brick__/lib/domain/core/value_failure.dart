import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  // This is an example for a value failure
  // It is used to show how to create a value failure
  const factory ValueFailure.example(T failedValue) = Example<T>;
}
