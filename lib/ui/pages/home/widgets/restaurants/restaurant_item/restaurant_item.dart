import 'package:flutter/material.dart';
import 'package:pizza_delivery/models/place/place_model.dart';

class RestaurantItem extends StatelessWidget {
  final PlaceModel restaurant;

  const RestaurantItem({required this.restaurant, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(restaurant.name),
          Text(restaurant.address),
        ],
      ),
    );
  }
}
