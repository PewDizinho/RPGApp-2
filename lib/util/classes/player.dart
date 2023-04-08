import 'dart:html';

import 'package:rpg_app_2/util/classes/base_human.dart';

class Player extends BaseHuman {
  late String playerName;
  late String history;

  Player(
    super.name,
    super.genre,
    super.health,
    super.sanity,
    super.visual,
    super.inventory,
    super.skills,
    playerName,
    history
  );
}
