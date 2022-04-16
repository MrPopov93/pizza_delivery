import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/decoration.dart';

import '../../../../../const/dummy_data.dart';

class UpMenuCard extends StatelessWidget {
  final String icon;
  final String title;

  const UpMenuCard({
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: AppDecorations.generalDecoration(),
      height: 80,
      width: (MediaQuery.of(context).size.width - 80) / DummyData.dummyMenu.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            height: 30,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
