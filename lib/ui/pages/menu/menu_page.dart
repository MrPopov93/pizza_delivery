import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/dummy_data.dart';
import 'package:pizza_delivery/models/up_menu_card/up_manu_card.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/restaurants/restaurants.dart';
import 'package:pizza_delivery/ui/pages/menu/widgets/pizza_card/pizza_card.dart';
import 'package:pizza_delivery/ui/pages/menu/widgets/up_card/up_card.dart';
import 'package:pizza_delivery/ui/shared_widgets/search/search.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: ListView(
          children: [
            //UpCard(title: 'd'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: DummyData.dummyMenuCard
                    .map(
                      (e) => UpCard(
                        title: e.title,
                      ),
                    )
                    .toList(),
              ),
            ),
            SearchWidget(),
            PizzaCard(),
          ],
        ),
      ),
    );
  }
}
