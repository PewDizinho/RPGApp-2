import 'package:flutter/material.dart';

class PewsTxt {
  /* Default values */
  Color _textColor = Colors.white;
  String _textFamily = "HandWriting";
  double _textSize = 20;
  FontWeight _textWeight = FontWeight.normal;
  TextOverflow _textOverflow = TextOverflow.fade;
  List<Shadow> _textShadows = [
    const Shadow(
      blurRadius: 3.0,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    const Shadow(
      blurRadius: 8.0,
      color: Color.fromARGB(125, 0, 0, 255),
    ),
  ];
  EdgeInsetsGeometry _textPadding = const EdgeInsets.all(0);
  /* Default values */

  PewsTxt setColor(Color color) {
    _textColor = color;
    return this;
  }

  PewsTxt setFamily(String family) {
    _textFamily = family;
    return this;
  }

  PewsTxt setSize(double size) {
    _textSize = size;
    return this;
  }

  PewsTxt setWeight(FontWeight weight) {
    _textWeight = weight;
    return this;
  }

  PewsTxt setOverflow(TextOverflow overflow) {
    _textOverflow = overflow;
    return this;
  }

  PewsTxt setShadow(List<Shadow> shadow) {
    _textShadows = shadow;
    return this;
  }

  PewsTxt setPadding(EdgeInsetsGeometry padding) {
    _textPadding = padding;
    return this;
  }

  Widget get(String text) {
    return Padding(
      padding: _textPadding,
      child: Text(
        text,
        textAlign: TextAlign.center,
        softWrap: true,
        style: TextStyle(
          color: _textColor,
          fontSize: _textSize,
          fontFamily: _textFamily,
          fontWeight: _textWeight,
          shadows: _textShadows,
          overflow: _textOverflow,
        ),
      ),
    );
  }
}
