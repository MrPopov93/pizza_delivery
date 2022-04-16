import 'package:flutter/material.dart';

class UpMenu extends StatelessWidget {
  const UpMenu ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.blue,
          child: Column(
            children: [
              Icon(Icons.fork_left),
              Text("Dishes",
              ),],
          ),
        )
      ],
    );
  }
}