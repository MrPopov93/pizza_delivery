import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/app_text_styles.dart';
import 'package:pizza_delivery/models/PromoCaruselModel/promo_carusel_model.dart';

class PromoCarouselItemHuge extends StatelessWidget {
  final PromoCaruselModel model;
  const PromoCarouselItemHuge({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.lightBlueAccent,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: AppTextStyles.upMenuText(),
                ),
                Text(model.description),
              ],
            ),
          ),
          Expanded(child: Image.asset(model.promoImage)),
        ],
      ),
    );
  }
}

class PromoCarouselItemRegular extends StatelessWidget {
  final PromoCaruselModel model;
  const PromoCarouselItemRegular({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(model.title);
  }
}

class PromoCarouselItemEmpty extends StatelessWidget {
  final PromoCaruselModel model;
  const PromoCarouselItemEmpty({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(model.promoImage)),
      ),
    );
  }
}
