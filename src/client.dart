import 'msg.dart';
import 'login.dart';
import 'cmd.dart';
import 'player.dart';

void runGame() {
  Message.welcome();
  Player player = login();

  while (true) {
    final String _cmd = waitCommand();

    if (_cmd == 'help') Message.commands();

    else if (_cmd == 'stats') player.viewStats();

    else if (_cmd == 'inventory' || _cmd == 'inv') player.viewInventory();

    else if (_cmd == 'exit') break;

    else Message.unknownCommand();

    print('');
  }

  Message.bye();
}

void main() => runGame();