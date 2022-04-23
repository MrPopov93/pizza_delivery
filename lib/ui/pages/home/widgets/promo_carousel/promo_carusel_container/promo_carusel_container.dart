import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/app_text_styles.dart';
import 'package:pizza_delivery/const/decoration.dart';
import 'package:pizza_delivery/models/PromoCaruselModel/promo_carusel_model.dart';

class PromoCarouselItemHuge extends StatelessWidget {
  final PromoCaruselModel model;

  const PromoCarouselItemHuge({required this.model, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(26.0),
      decoration: AppDecorations.generalDecoration(color: Colors.redAccent),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.title,
                  style: AppTextStyles.promoCaruselTitle(),
                ),
                SizedBox(height: 10),
                Text(model.description,
                    style: AppTextStyles.promoCaruselDiscription()),
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

  const PromoCarouselItemRegular({required this.model, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(24.0),
        margin: EdgeInsets.all(8.0),
        decoration:
            // AppDecorations.generalDecoration(color: Colors.deepPurpleAccent
            BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.deepPurple,
                    Colors.deepPurpleAccent,
                  ],
                )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(model.title, style: AppTextStyles.promoCaruselTitle()),
            SizedBox(height: 10),
            Text(model.description,
                textAlign: TextAlign.center,
                style: AppTextStyles.promoCaruselDiscription()),
          ],
        ));

    Text(model.title);
  }
}

class PromoCarouselItemEmpty extends StatelessWidget {
  final PromoCaruselModel model;

  const PromoCarouselItemEmpty({required this.model, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24.0),
      margin: EdgeInsets.all(8.0),
      decoration: AppDecorations.generalDecoration(color: Colors.white70),
      child: Image.asset(model.promoImage),
      // BoxDecoration(
      //   image: DecorationImage(image: AssetImage(model.promoImage)),
      // ),
    );
  }
}
