import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/dummy_data.dart';
import 'package:pizza_delivery/models/PromoCaruselModel/promo_carusel_model.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/promo_carousel/promo_carusel_container/promo_carusel_container.dart';

class PromoCarousel extends StatelessWidget {
  const PromoCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(viewportFraction: 1, height: 190.0),
      items: DummyData.dummyPromo.map((i) {
        return showContent(i);

        /*if (i.typeOfCard == 1) {
          return PromoCarouselItemHuge(model: i);
        } else if (i.typeOfCard == 2) {
          return PromoCarouselItemRegular(model: i);
        }
        return PromoCarouselItemEmpty(
          model: i,
        );*/

        // return Builder(
        //   builder: (BuildContext context) {
        //     return Container(
        //         width: MediaQuery.of(context).size.width,
        //         margin: EdgeInsets.symmetric(horizontal: 5.0),
        //         decoration: BoxDecoration(color: Colors.redAccent),
        //         child: Center(
        //           child: Text(
        //             'text $i',
        //             style: TextStyle(fontSize: 16.0),
        //           ),
        //         ));
        //   },
        // );
      }).toList(),
    );
  }

  Widget showContent(PromoCaruselModel m) {
    switch (m.promoTypes) {
      case PromoTypes.huge:
        return PromoCarouselItemHuge(model: m);
      case PromoTypes.regular:
        return PromoCarouselItemRegular(model: m);
      case PromoTypes.empty:
        return PromoCarouselItemEmpty(model: m);
    }
  }
}
