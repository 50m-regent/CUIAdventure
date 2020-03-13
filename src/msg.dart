import 'dart:io';

abstract class Message {
  static void welcome()        => print('Welcome to CUI Adventure!');
  static void getID()          => stdout.write('Login ID<< ');
  static void loginComplete()  => print('Logged in!');
  static void command()        => stdout.write('Command<< ');
  static void unknownCommand() => print('Unknown Command!');
  static void bye()            => print('See you next time!');
  static void stats()          => stdout.write('----- Stats -----');
  static void close()          => print('-----------------');
}