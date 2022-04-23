import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/dummy_data.dart';
import 'package:pizza_delivery/ui/pages/menu/widgets/pizza_card/pizza_card_item/pizza_card_item.dart';

class PizzaCard extends StatelessWidget {
  const PizzaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: ListView.builder(
          itemCount: DummyData.dummyPizzaCard.length,
          itemBuilder: (context, index) {
            return PizzaCardItem(pizzaCards: DummyData.dummyPizzaCard[index]);
          }),
    );
  }
}
