import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/app_text_styles.dart';
import 'package:pizza_delivery/const/dummy_data.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/restaurants/restaurant_item/restaurant_item.dart';

class Restaurants extends StatelessWidget {
  const Restaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Restourants:',
                style: AppTextStyles.mainText(),
                // TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 18,
                // ),
              ),
              Text(
                '1/4',
                style: AppTextStyles.mainText(),
              ),
            ],
          ),
        ),
        Container(
          height: 136,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: DummyData.dummyPlaces.length,
              itemBuilder: (context, index) {
                return RestaurantItem(
                  restaurant: DummyData.dummyPlaces[index],
                  callback: () => print('added to favorites ${DummyData.dummyPlaces[index].name}'),
                );
              }),
        ),
      ],
    );
  }
}
