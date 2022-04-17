import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/app_text_styles.dart';
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
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: AppDecorations.generalDecoration(),
      height: 82,
      width: (MediaQuery.of(context).size.width - 80) / DummyData.dummyMenu.length,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            icon,
            height: 30,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: AppTextStyles.upMenuText(),
          ),
        ],
      ),
    );
  }
}
