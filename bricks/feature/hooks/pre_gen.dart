import 'dart:io';

import 'package:mason/mason.dart';
import 'package:path/path.dart' as path;

Future<void> run(HookContext context) async {
  final name = context.vars['name'] as String;
  final isStateless = context.vars['isStateless'] as bool;
  var vars = <String, dynamic>{'name': name};

  final application = Brick.path(path.join(
    Directory.current.path,
    'bricks',
    'application',
  ));
  final domain = Brick.path(path.join(
    Directory.current.path,
    'bricks',
    'domain',
  ));
  final infrastructure = Brick.path(path.join(
    Directory.current.path,
    'bricks',
    'infrastructure',
  ));
  final presentation = Brick.path(path.join(
    Directory.current.path,
    'bricks',
    'presentation',
  ));

  final applicationGenerator = await MasonGenerator.fromBrick(application);
  final domainGenerator = await MasonGenerator.fromBrick(domain);
  final infrastructureGenerator =
      await MasonGenerator.fromBrick(infrastructure);
  final presentationGenerator = await MasonGenerator.fromBrick(presentation);

  final applicationTarget =
      DirectoryGeneratorTarget(Directory(Directory.current.path));
  final domainTarget =
      DirectoryGeneratorTarget(Directory(Directory.current.path));
  final infrastructureTarget =
      DirectoryGeneratorTarget(Directory(Directory.current.path));
  final presentationTarget =
      DirectoryGeneratorTarget(Directory(Directory.current.path));

  await applicationGenerator.generate(
    applicationTarget,
    vars: vars,
    logger: context.logger,
  );
  await domainGenerator.generate(
    domainTarget,
    vars: vars,
    logger: context.logger,
  );
  await infrastructureGenerator.generate(
    infrastructureTarget,
    vars: vars,
    logger: context.logger,
  );
  await presentationGenerator.generate(
    presentationTarget,
    vars: {...vars, 'isStateless': isStateless},
    logger: context.logger,
  );
}
