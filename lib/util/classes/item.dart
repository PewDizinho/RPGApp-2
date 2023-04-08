class Item {
  late String name;
  late String description;
  late int weight;
  late int? damage;
  late int? quantity;

  Item(name, description, weight, damage, quantity);

  Map getJson() {
    return {
      name: name,
      description: description,
      weight: weight,
      damage: damage ??= 0,
      quantity: quantity ??= 1,
    };
  }
}
