import 'msg.dart';
import 'items.dart';

class Player {
  final String id;
  int level;
  Equip equip;
  List<Item> inventory;

  Player.initial({String this.id = ''}) {
    this.level = 1;

    this.equip = Equip();

    this.inventory = [Items.rod];
  }
  Player.fromID(String this.id) {

  }

  void viewStats() {
    Message.stats();

    print('${this.id}');
    print('Level: ${this.level}');

    this.equip.view();

    Message.close();
  }
}