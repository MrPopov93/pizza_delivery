import 'package:flutter/material.dart';

import '../../../../../const/dummy_data.dart';
import '../../../../../models/up_menu/up_menu.dart';


class UpMenuCard extends StatelessWidget {
  const UpMenuCard({Key? key, UpMenuModel}) : super(key: key);


  // const UpMenuCard({required this.upMenuModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Row(
      children: [
        Container(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DummyData.dummyMenu.length,
              itemBuilder: (context, index) {
                return UpMenuCard(UpMenuModel: DummyData.dummyMenu[index]);
              }),
          // height: 80,
          // width: 80,
          // padding: EdgeInsets.all(10.0),
          // color: Colors.blue,
          // child: Column(
          //   children: [
          //     // Image.asset(upMenuModel.icon, height: 45),
          //     Text("Dishes",
          //     ),],
          // ),
        )
      ],
    );
  }
}