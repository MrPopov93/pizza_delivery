import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle mainText() {
    return TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    );
  }
  static TextStyle upMenuText() {
    return TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.black54);

  }
  static TextStyle promoCaruselTitle() {
    return TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
  static TextStyle promoCaruselDiscription() {
    return TextStyle(
      fontSize: 14,
      color: Colors.white70,
      fontWeight: FontWeight.bold,
    );
  }

}
