import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final useJsonSerializable = context.vars['use_json_serializable'];
  if (useJsonSerializable) {
    final codeGen = context.logger.progress('Build runner gen in progress');
    await Process.run(
      'flutter',
      ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'],
      runInShell: true,
    );
    codeGen.complete();
  }
}
