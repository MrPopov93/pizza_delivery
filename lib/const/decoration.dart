import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDecorations {
  static BoxDecoration generalDecoration({Color? color }) => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? Colors.white,
      );
  static BoxDecoration generalDecorationGradient() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.deepPurple,
            Colors.deepPurpleAccent,
          ],
        ));
  }
}
