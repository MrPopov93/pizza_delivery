import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/app_text_styles.dart';
import 'package:pizza_delivery/const/decoration.dart';
import 'package:pizza_delivery/models/place/place_model.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/restaurants/restaurant_item/widgets/restaurant_item_el.dart';

class RestaurantItem extends StatelessWidget {
  final PlaceModel restaurant;
  final void Function() callback;

  const RestaurantItem({
    required this.restaurant,
    required this.callback,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      //где указаны отступы межды ресторанами?
      child: Container(
        decoration: AppDecorations.generalDecoration(),
        width: 280,
        // color: Colors.deepPurpleAccent,
        child: Stack(
          children: [
            Column(
              children: [
                Image.asset(restaurant.imagePreview,
                    width: double.infinity, fit: BoxFit.cover, height: 66),
                SizedBox(
                    height:6),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      restaurant.name,
                      style: AppTextStyles.mainText(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RestauranItemel(
                        iconData: Icons.location_on_outlined,
                        text: '${restaurant.commitDistance} km',
                      ),
                      RestauranItemel(
                        iconData: Icons.access_time_rounded,
                        text: '${restaurant.commuteTime} min',
                      ),
                      RestauranItemel(
                        iconData: Icons.star_border,
                        text: restaurant.rating.toString(),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 4,
              right: 8,
              child: InkWell(
                radius: 20,
                onTap: callback,
                splashColor: Colors.red,
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.8),
                  child: Icon(
                    Icons.heart_broken_outlined,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
