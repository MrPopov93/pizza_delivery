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
                Row(
                  children: [
                    Text(restaurant.name),
                    SizedBox( width: 5),
                    Text(restaurant.address),
                  ],
                ),
                Row(
                  children: [
                    Container(child:
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text('3 km'),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.access_time),
                          Text('15 min'),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Icon(Icons.star_border_outlined),
                          Text('4.8'),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),

          ],
        ),
      ),
    );
  }
}
