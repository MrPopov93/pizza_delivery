import 'package:flutter/material.dart';

class RestauranItemel extends StatelessWidget {
  final IconData iconData;
  final String text;

  const RestauranItemel({required this.iconData, required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 12,
          color: Colors.redAccent,
        ),
        Text(text),
      ],
    );
  }
}
