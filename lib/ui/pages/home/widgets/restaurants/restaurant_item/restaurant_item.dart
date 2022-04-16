import 'package:flutter/material.dart';
import 'package:pizza_delivery/models/place/place_model.dart';

class RestaurantItem extends StatelessWidget {
  final PlaceModel restaurant;

  const RestaurantItem({required this.restaurant, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),//где указаны отступы межды ресторанами?
      child: Container(
        width: 280,
        color: Colors.deepPurpleAccent,
        child: Column(
          children: [
            Image.asset(restaurant.imagePreview, height: 50),
            Column(
              children: [
                Text(restaurant.name),
              ],
            ),
            Text(restaurant.address),
          ],
        ),
      ),
    );
  }
}
