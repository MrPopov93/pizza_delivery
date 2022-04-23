
import 'package:flutter/material.dart';

class PizzaCardItemEl extends StatelessWidget {
  final IconData iconData;
  final String text;

  const PizzaCardItemEl({
    required this.iconData,
    required this.text,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData,size: 22,color: Colors.yellow),
        Icon(iconData,size: 22,color: Colors.yellow),
        Icon(iconData,size: 22,color: Colors.yellow),
        Icon(iconData,size: 22,color: Colors.yellow),
        Icon(iconData,size: 22,color: Colors.yellow),
        Text(text),

      ],
    );
  }
}
