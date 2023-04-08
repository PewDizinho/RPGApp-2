import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../util/pews_txt.dart';
import '../../../util/pews_util.dart';

class General extends StatefulWidget {
  const General({super.key});

  @override
  State<General> createState() => _GeneralState();
}

class _GeneralState extends State<General> {
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
            txt
                .setPadding(EdgeInsets.only(top: 15.sp))
                .setSize(20.sp)
                .get("Geral"),
            const Spacer(flex: 10),
            SizedBox(
              width: 80.w,
              child: TextField(
                onChanged: ((value) {}),
                textCapitalization: TextCapitalization.sentences,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 0, 7, 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Nome do RPG",
                ),
              ),
            ),
            const Spacer(flex: 3),
            SizedBox(
              width: 80.w,
              child: TextField(
                onChanged: ((value) {}),
                textCapitalization: TextCapitalization.sentences,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 0, 7, 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Resumo da História",
                ),
              ),
            ),
            const Spacer(flex: 3),
            SizedBox(
              width: 80.w,
              child: TextField(
                onChanged: ((value) {}),
                textCapitalization: TextCapitalization.sentences,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromARGB(255, 0, 7, 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Nome do Mestre",
                ),
              ),
            ),
            const Spacer(flex: 20),
            util.getBackbutton(context),
            const Spacer(flex: 10),
          ],
        ),
      ),
    );
  }
}
