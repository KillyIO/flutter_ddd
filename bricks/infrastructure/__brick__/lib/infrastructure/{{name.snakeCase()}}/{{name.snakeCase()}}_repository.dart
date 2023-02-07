import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';

@LazySingleton(
  as: I{{name.pascalCase()}}Repository,
  env: [Environment.dev, Environment.prod],
)
class {{name.pascalCase()}}Repository implements I{{name.pascalCase()}}Repository {
  {{name.pascalCase()}}Repository();
}
