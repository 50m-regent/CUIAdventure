import 'dart:io';

abstract class Message {
  static void welcome()        => print(
    'Welcome to CUI Adventure!\n' +
    'type "help" to view commands!'
  );
  static void getID()          => stdout.write('Login ID<< ');
  static void loginComplete()  => print('Logged in!');
  static void waitCommand()    => stdout.write('Command<< ');
  static void unknownCommand() => print('Unknown Command!');
  static void bye()            => print('See you next time!');
  static void stats()          => print('- Stats ---------');
  static void inventory()      => print('- Inventory -----');
  static void close()          => print('-----------------');

  static void commands() {
    print('- Commands ------');
    print('help      -Shows this list.');
    print('stats     -Shows player status.');
    print('inventory -Shows your inventory.');
    print('  alias: inv');
    print('exit      -Exits game.');
    Message.close();
  }
}