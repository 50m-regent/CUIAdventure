import 'dart:io';

import 'msg.dart';

String waitCommand() {
  Message.waitCommand();

  final String _cmd = stdin.readLineSync();

  return _cmd;
}