import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/decoration.dart';
import 'package:pizza_delivery/models/place/place_model.dart';

class RestaurantItem extends StatelessWidget {
  final PlaceModel restaurant;

  const RestaurantItem({required this.restaurant, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      //где указаны отступы межды ресторанами?
      child: Container(
        decoration: AppDecorations.generalDecoration,
        width: 280,
        // color: Colors.deepPurpleAccent,
        child: Column(
          children: [
            Image.asset(restaurant.imagePreview,
                width: double.infinity, fit: BoxFit.cover, height: 70),
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 5),
                    Text(
                      restaurant.address,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Icon(Icons.location_on_outlined,
                          size: 20, color: Colors.redAccent),
                    ),
                    Icon(Icons.access_time, size: 20, color: Colors.redAccent),
                    Icon(Icons.star_border, size: 20, color: Colors.redAccent),
                    Text(restaurant.rating.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
