import 'package:rpg_app_2/util/classes/item.dart';

import '../enums/effects.dart';

class BaseHuman {
  late String name;
  late String genre;
  late String health;
  late String sanity;
  late List inventory;
  late String? visual;
  late String? skills;

  BaseHuman(this.name, this.genre, this.health, String sanity, List inventory,
      String? visual, String? skills);

  void damage(int damageValue) {}

  void heal(int healValue) {}

  void addEffect(Effects effect) {}

  void removeEffect(Effects effects) {}

  void addItemToInventory(Item item) {}

  void removeItemFromInventory(Item item) {}

  
}
