import 'package:flutter/material.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/popular_section/popular_section.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/promo_carousel/promo_carousel.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/restaurants/restaurants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Center(
        child: Column(
          children: [
            Restaurants(),
            Text('wfaf'),
            PromoCarousel(),
            PopularSection(),
          ],
        ),
      ),
    );
  }
}
