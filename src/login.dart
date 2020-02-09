import 'dart:io';

import 'msg.dart';

void login() {
  Message.getID();
  final String _id = stdin.readLineSync();

  Message.getPass();
  final String _pass = stdin.readLineSync();

  Message.loginComplete();
}