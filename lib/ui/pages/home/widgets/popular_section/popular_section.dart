import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/app_text_styles.dart';
import 'package:pizza_delivery/const/dummy_data.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/popular_section/promo_card/promo_card.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Popular',
              style: AppTextStyles.mainText(),
            ),
            Text(
              'See all',
              style: AppTextStyles.mainText(),
            ),
          ],
        ),
        Container(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: DummyData.dummyPizza.length,
            itemBuilder: (context, index) {
              return PromoCard(pizzaModel: DummyData.dummyPizza[index]);
            },
          ),
        ),
      ],
    );
  }
}
