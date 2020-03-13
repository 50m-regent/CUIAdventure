import 'msg.dart';
import 'items.dart';

class Player {
  final String id;
  int level;
  Equip equip;
  List<Item> inventory;

  Player.initial({String this.id = 'New Player'}) {
    this.level     = 1;
    this.equip     = Equip();
    this.inventory = [
      Items.normalRod,
      Items.normalBait,
    ];
  }
  Player.fromID(String this.id) {
    // TODO: プレイヤー読み込み
  }

  void viewStats() {
    Message.stats();

    print('${this.id}');
    print('Level: ${this.level}');

    this.equip.view();

    Message.close();
  }

  void viewInventory() {
    Message.inventory();

    for (Item _item in this.inventory) _item.view();

    Message.close();
  }
}