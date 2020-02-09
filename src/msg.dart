import 'dart:io';

abstract class Message {
  static void welcome()       => print('Welcome to CUI Adventure!');
  static void getID()         => stdout.write('Login ID<< ');
  static void getPass()       => stdout.write('Password<< ');
  static void loginComplete() => print('Logged in!');
}