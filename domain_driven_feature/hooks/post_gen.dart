import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) async {
  final codeGen = context.logger.progress('Build runner gen in progress');
  await Process.run(
    'flutter',
    ['pub', 'run', 'build_runner', 'build', '--delete-conflicting-outputs'],
    runInShell: true,
  );
  codeGen.complete();
}
