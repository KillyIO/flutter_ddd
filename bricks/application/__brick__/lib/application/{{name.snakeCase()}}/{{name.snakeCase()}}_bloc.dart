import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part '{{{name.snakeCase()}}}_bloc.freezed.dart';
part '{{{name.snakeCase()}}}_event.dart';
part '{{{name.snakeCase()}}}_state.dart';

@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class {{name.pascalCase()}}Bloc extends Bloc<{{name.pascalCase()}}Event, {{name.pascalCase()}}State> {
  {{name.pascalCase()}}Bloc() : super({{name.pascalCase()}}Initial()) {
    on<Init>((event, emit) {});
  }
}


