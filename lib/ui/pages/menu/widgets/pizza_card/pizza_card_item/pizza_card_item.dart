

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/app_text_styles.dart';
import 'package:pizza_delivery/const/decoration.dart';
import 'package:pizza_delivery/const/paddings.dart';
import 'package:pizza_delivery/models/pizza_card/pizza_card.dart';
import 'package:pizza_delivery/ui/pages/menu/widgets/pizza_card/pizza_card_item_el.dart';

class PizzaCardItem extends StatelessWidget {
  final PizzaCardModel pizzaCards;

  const PizzaCardItem({
    required this.pizzaCards,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 16.0),
      decoration: AppDecorations.generalDecoration(),
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      height: 130,
      // width: MediaQuery.of(context).size.width - (PaddingsSize.generalPadding),
      child: Row(
        children: [
          Image.asset(pizzaCards.image, height: 110),
          SizedBox(width: 26.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pizzaCards.name,
              style: AppTextStyles.upMenuText()),
              PizzaCardItemEl(
                  iconData: Icons.star,
                  text: '${pizzaCards.rating}'),
              PizzaCardItemEl(
                iconData: Icons.start ,
                  text: '${pizzaCards.weight} g'),
              PizzaCardItemEl(
                  iconData: Icons.monetization_on,
                  text: '${pizzaCards.price} BYN'),
              // Text(pizzaCards.rating),
              // Text(pizzaCards.weight),
              // Text(pizzaCards.price),
            ],
          ),
        ],
      ),
    );
  }
}
