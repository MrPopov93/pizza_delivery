import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/decoration.dart';
import 'package:pizza_delivery/const/dummy_data.dart';

class UpCard extends StatelessWidget {
  final String title;

  const UpCard({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: AppDecorations.generalDecoration(),
      height: 36,
      // width: (MediaQuery.of(context).size.width - 80) / DummyData.dummyMenuCard.length,
      child: Text(title),
    );
  }
}
