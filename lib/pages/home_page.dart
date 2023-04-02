import 'package:flutter/material.dart';
import 'package:rpg_app_2/pages/mestre/mestre_home.dart';
import 'package:rpg_app_2/util/pews_txt.dart';
import 'package:rpg_app_2/util/pews_util.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static PewsUtil util = PewsUtil();
  PewsTxt txt = util.getTxt();
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/Background.png"), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          txt
              .setSize(20.sp)
              .setPadding(const EdgeInsets.fromLTRB(0, 15, 0, 0))
              .get("Seja Bem vindo!"),
          SizedBox(
            height: 1.h,
          ),
          txt
              .setSize(15.sp)
              .setPadding(const EdgeInsets.fromLTRB(0, 0, 0, 0))
              .get("Versão beta"),
          SizedBox(
            height: 3.h,
          ),
          txt.get("Escolha o seu perfil"),
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
                  Icons.person_search,
                  "Mestre",
                  () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MestreHome(),
                        ),
                      ),
                  null),
              const Spacer(
                flex: 1,
              ),
              util.getButton(context, Icons.person_add_sharp, " Player ",
                  () => null, null),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
