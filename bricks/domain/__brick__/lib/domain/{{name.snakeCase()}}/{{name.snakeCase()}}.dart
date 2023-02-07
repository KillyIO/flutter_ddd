import 'package:freezed_annotation/freezed_annotation.dart';

part '{{{name.snakeCase()}}}.freezed.dart';

@freezed
class {{name.pascalCase()}} with _${{name.pascalCase()}} {
  factory {{name.pascalCase()}}({}) = _{{name.pascalCase()}};

  factory {{name.pascalCase()}}.empty() => {{name.pascalCase()}}();
}
