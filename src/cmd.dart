import 'dart:io';

import 'msg.dart';

String waitCommand() {
  Message.command();

  final String _cmd = stdin.readLineSync();

  return _cmd;
}