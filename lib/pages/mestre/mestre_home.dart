import 'package:flutter/material.dart';
import 'package:rpg_app_2/pages/mestre/subpages/general.dart';
import 'package:rpg_app_2/pages/mestre/subpages/newitem.dart';
import 'package:rpg_app_2/pages/mestre/subpages/newnpc.dart';
import 'package:rpg_app_2/pages/mestre/subpages/newplayer.dart';
import 'package:sizer/sizer.dart';

import '../../util/pews_txt.dart';
import '../../util/pews_util.dart';

class MestreHome extends StatefulWidget {
  const MestreHome({super.key});

  @override
  State<MestreHome> createState() => _MestreHomeState();
}

class _MestreHomeState extends State<MestreHome> {
  static PewsUtil util = PewsUtil();
  PewsTxt txt = util.getTxt();
  Widget? _page;
  @override
  void initState() {
    super.initState(); //First Time?
    _page = Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          txt
              .setSize(20.sp)
              .setPadding(const EdgeInsets.only(top: 10))
              .get("Mestre"),
          txt.setSize(15.sp).setPadding(const EdgeInsets.all(5)).get(
              "Seja Bem-vindo novo Mestre! Aqui você poderá configurar todo o seu RPG e então repassar as informações para os seus jogadores!"),
          const Spacer(
            flex: 1,
          ),
          util.getButton(
              context,
              Icons.start,
              "Começar",
              () => {
                    setState(() {
                      _page = null;
                    })
                  },
              null),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          txt
              .setSize(20.sp)
              .setPadding(EdgeInsets.only(top: 15.sp, bottom: 10.sp))
              .get("Mestre"),
          txt
              .setSize(15.sp)
              .setPadding(EdgeInsets.only(top: 5.sp, bottom: 0.sp))
              .get("Edite informações do seu rpg aqui"),
          const Spacer(
            flex: 2,
          ),
          Row(
            children: [
              const Spacer(
                flex: 2,
              ),
              util.getButton(
                  context,
                  Icons.person_add_alt_1,
                  "New Player",
                  () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewPlayer())),
                  20.sp),
              const Spacer(
                flex: 1,
              ),
              util.getButton(
                  context,
                  Icons.person_add_alt_1,
                  " New Npc ",
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const NewNpc())),
                  20.sp),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          Row(
            children: [
              const Spacer(
                flex: 2,
              ),
              util.getButton(
                  context,
                  Icons.person_add_alt_1,
                  " New Item ",
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const NewItem())),
                  20.sp),
              const Spacer(
                flex: 1,
              ),
              util.getButton(
                  context,
                  Icons.person_add_alt_1,
                  "    Geral    ",
                  () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const General())),
                  20.sp),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
