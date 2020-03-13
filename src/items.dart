class Item {
  final String name;

  const Item({
    String this.name,
  });
  const Item.none({String this.name = 'NONE'});
}

abstract class Items {
  static const Item rod = Item(name: 'Normal Rod');
}

class Equip {
  Item head, body, leg, feet;

  Equip({
    this.head = const Item.none(),
    this.body = const Item.none(),
    this.leg  = const Item.none(),
    this.feet = const Item.none(),
  });

  void view() {
    print('Equip:');
    print('  Head: ${this.head.name}');
    print('  Body: ${this.body.name}');
    print('  Leg:  ${this.leg.name}');
    print('  Feet: ${this.feet.name}');
  }
}