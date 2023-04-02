import 'package:flutter/material.dart';
import 'package:rpg_app_2/util/config.dart';
import 'package:rpg_app_2/util/pews_txt.dart';
import 'package:sizer/sizer.dart';

class PewsUtil {
  PewsTxt getTxt() {
    return PewsTxt();
  }

  Config getConfig() {
    return Config();
  }

  Widget getButton(BuildContext context, IconData icon, String text,
      Function() tap, double? size) {
    size ??= 30.sp;
    return SizedBox(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15.0),
            topRight: Radius.circular(15.0),
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0),
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.black,
            borderRadius: BorderRadius.circular(20),
            onTap: tap,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(icon, size: size * 2.sp),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    " $text ",
                    style: TextStyle(fontSize: size),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
