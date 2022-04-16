import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/dummy_data.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/restaurants/restaurant_item/restaurant_item.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Restourants:'),
            Text('1/4'),
          ],
        ),
        Container(
          height: 130,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DummyData.dummyPlaces.length,
              itemBuilder: (context, index) {
                return RestaurantItem(restaurant: DummyData.dummyPlaces[index]);
              }),
        ),
      ],
    );
  }
}
