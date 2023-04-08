import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../util/pews_txt.dart';
import '../../../util/pews_util.dart';

class NewPlayer extends StatefulWidget {
  const NewPlayer({super.key});

  @override
  State<NewPlayer> createState() => _NewPlayerState();
}

class _NewPlayerState extends State<NewPlayer> {
  static PewsUtil util = PewsUtil();
  PewsTxt txt = util.getTxt();
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
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
              txt
                  .setPadding(EdgeInsets.only(top: 15.sp))
                  .setSize(20.sp)
                  .get("New Player"),
              const Spacer(flex: 5),
              Row(
                children: [
                  SizedBox(
                    width: 3.w,
                  ),
                  Column(children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 40.w,
                          height: 50.w,
                          child: Image.asset(
                            'assets/icon.png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ],
                    ),
                  ]),
                  SizedBox(
                    width: 1.w,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _getInkWell(
                          "Jogador:",
                          () => prompt(
                              context,
                              util,
                              "Jogador",
                              "Nome do Jogador",
                              "O Nome real do jogador que irá controlar esse personagem"),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        _getInkWell(
                          "Nome:",
                          () {
                            prompt(context, util, "Nome", "Nome",
                                "O nome do personagem");
                          },
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        _getInkWell(
                          "Idade:",
                          () => prompt(context, util, "Idade", "Idade",
                              "A idade do personagem"),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        _getInkWell(
                          "Vida:",
                          () => prompt(context, util, "Vida", "Vida",
                              "A vida máxima do personagem"),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        _getInkWell(
                          "Sanidade:",
                          () => prompt(context, util, "Sanidade", "Sanidade",
                              "A sanidade máxima do personagem"),
                        ),
                      ]),
                ],
              ),
              const Spacer(flex: 20),
              util.getBackbutton(context),
              const Spacer(flex: 10),
            ],
          )),
    );
  }
}

Widget _getInkWell(String text, Function() onTap) {
  return InkWell(
    onTap: onTap,
    child: Text(
      text,
      style: TextStyle(
        fontSize: 15.sp,
        fontFamily: 'DroidSans-bold',
      ),
    ),
  );
}

void prompt(BuildContext context, PewsUtil util, String header, String inputMsg,
    String description) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: ((context) => Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 77, 255, 0),
                Color.fromARGB(255, 53, 178, 0),
                Color.fromARGB(255, 30, 98, 0),
                Color.fromARGB(255, 15, 48, 0),
              ],
            )),
            child: AlertDialog(
              title: util.getTxt().get(header),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  util.getTxt().setSize(15.sp).get(description),
                  SizedBox(
                    height: 2.h,
                  ),
                  util.getInputText(context, inputMsg, (value) => null, null),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  child: util.getTxt().get("Cancelar"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: util.getTxt().get("Salvar"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          )),
    ),
  );
}
