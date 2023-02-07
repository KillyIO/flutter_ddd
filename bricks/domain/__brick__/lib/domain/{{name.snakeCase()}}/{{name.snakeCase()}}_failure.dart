import 'package:freezed_annotation/freezed_annotation.dart';

part '{{{name.snakeCase()}}}_failure.freezed.dart';

@freezed
class {{name.pascalCase()}}Failure with _${{name.pascalCase()}}Failure {
  const factory {{name.pascalCase()}}Failure.unexpected() = Unexpected;
}
