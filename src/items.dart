class Item {
  final String name, lore;

  const Item({
    String this.name,
    String this.lore,
  });
  const Item.none({
    String this.name = 'NONE',
    String this.lore = ''
  });

  void view() {
    print('${this.name} -${this.lore}');
  }
}

class Rod extends Item {
  final int durability;

  const Rod({
    String name,
    String lore,
    int this.durability,
  }) : super(
    name: name,
    lore: lore,
  );

  @override
  void view() {
    super.view();
    print('  Durability: ${this.durability}');
  }
}

class Bait extends Item {
  int amount;

  Bait({
    String name,
    String lore,
    int this.amount,
  }) : super(
    name: name,
    lore: lore,
  );

  @override
  void view() {
    super.view();
    print('  Amount: ${this.amount}');
  }
}

abstract class Items {
  static const Rod normalRod = Rod(
    name      : 'Normal Rod',
    lore      : 'The first, the best.',
    durability: 10,
  );
  static final Bait normalBait = Bait(
    name  : "Normal Bait",
    lore  : 'Better than nothing.',
    amount: 10,
  );
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