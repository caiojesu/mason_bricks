import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  context.vars['project'] =
      Directory.current.path.toString().replaceAll("'", "").split(r'/').last;
}
