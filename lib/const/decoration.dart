import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDecorations {
  static BoxDecoration generalDecoration({Color? color}) => BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color ?? Colors.white,
      );
}
