import 'package:flutter/material.dart';

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
      width: (MediaQuery.of(context).size.width - 16) / DummyData.dummyMenu.length,
      child: Card(
        child: Column(
          children: [
            Image.asset(
              icon,
              height: 20,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
