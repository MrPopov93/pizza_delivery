import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/decoration.dart';
import 'package:pizza_delivery/const/paddings.dart';
import 'package:pizza_delivery/models/pizza/pizza_model.dart';

class PromoCard extends StatelessWidget {
  final PizzaModel pizzaModel;

  const PromoCard({required this.pizzaModel, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.generalDecoration(color: Colors.lightGreen),
      margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      height: 80,
      width: MediaQuery.of(context).size.width / 3 - (PaddingsSize.generalPadding),

      // color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(pizzaModel.image, height: 110),
          Text(
            pizzaModel.name,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
