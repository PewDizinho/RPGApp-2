import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../util/pews_txt.dart';
import '../../../util/pews_util.dart';

class NewItem extends StatefulWidget {
  const NewItem({super.key});

  @override
  State<NewItem> createState() => _NewItemState();
}

class _NewItemState extends State<NewItem> {
  static PewsUtil util = PewsUtil();
  PewsTxt txt = util.getTxt();
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
            txt.get("New Item"),
            const Spacer(flex: 20),
            Material(
              color: Colors.transparent,
              child: Center(
                child: IconButton(
                    iconSize: 50.sp,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 50.sp,
                    )),
              ),
            ),
            const Spacer(flex: 10),
          ],
        ));
  }
}
