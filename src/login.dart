import 'dart:io';

import 'msg.dart';
import 'player.dart';

Player login() {
  Message.getID();
  final String _id = stdin.readLineSync();

  Message.loginComplete();

  Player player;

  if (_id == 'NEW') player = Player.initial();
  else player = Player.fromID(_id);

  return player;
}