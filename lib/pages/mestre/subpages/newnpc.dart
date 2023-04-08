import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../util/pews_txt.dart';
import '../../../util/pews_util.dart';

class NewNpc extends StatefulWidget {
  const NewNpc({super.key});

  @override
  State<NewNpc> createState() => NewNpcState();
}

class NewNpcState extends State<NewNpc> {
  static PewsUtil util = PewsUtil();
  PewsTxt txt = util.getTxt();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const Spacer(flex: 20),
              util.getBackbutton(context),
              const Spacer(flex: 10),
            ],
          )),
    );
  }
}
