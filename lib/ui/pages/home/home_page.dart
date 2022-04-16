import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/dummy_data.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/popular_section/popular_section.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/promo_carousel/promo_carousel.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/restaurants/restaurants.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/up_menu/up_menu.dart';
import 'package:pizza_delivery/ui/shared_widgets/search/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Center(
        child: Column(
          children: [
            SearchWidget(),
            Row(
              children: DummyData.dummyMenu
                  .map((e) => UpMenuCard(
                        icon: e.icon,
                        title: e.name,
                      ))
                  .toList(),
            ),
            Restaurants(),
            PromoCarousel(),
            PopularSection(),
          ],
        ),
      ),
    );
  }
}
