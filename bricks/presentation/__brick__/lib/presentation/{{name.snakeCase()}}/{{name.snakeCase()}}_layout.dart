import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

{{#isStateless}}
class {{name.pascalCase()}}Layout extends StatelessWidget {
  {{name.pascalCase()}}Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
{{/isStateless}}
{{^isStateless}}
class {{name.pascalCase()}}Layout extends StatefulWidget {
  const {{name.pascalCase()}}Layout({super.key});

  @override
  State<{{name.pascalCase()}}Layout> createState() => _{{name.pascalCase()}}LayoutState();
}

class _{{name.pascalCase()}}LayoutState extends State<{{name.pascalCase()}}Layout> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
{{/isStateless}}