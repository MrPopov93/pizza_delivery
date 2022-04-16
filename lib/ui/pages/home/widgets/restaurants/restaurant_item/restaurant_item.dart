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
                Image.asset(restaurant.imagePreview, width: double.infinity, fit: BoxFit.cover, height: 70),
                // Column(
                //   children: [
                //     Row(
                //       children: [
                //         SizedBox(width: 5),
                //         Text(
                //           restaurant.address,
                //           style:
                //               TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                //         ),
                //       ],
                //     ),
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Container(
                //           child: Icon(Icons.location_on_outlined,
                //               size: 20, color: Colors.redAccent),
                //         ),
                //         Icon(Icons.access_time, size: 20, color: Colors.redAccent),
                //         Icon(Icons.star_border, size: 20, color: Colors.redAccent),
                //         Text(restaurant.rating.toString()),
                //       ],
                //     ),
                //   ],
                // ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    restaurant.name,
                    style: AppTextStyles.mainText(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RestauranItemel(
                        iconData: Icons.add_location,
                        text: '${restaurant.commitDistance} km',
                      ),
                      RestauranItemel(
                        iconData: Icons.timer,
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
