import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromoCarousel extends StatelessWidget {
  const PromoCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(viewportFraction: 1, height: 190.0),
      items: [1, 2, 3, 4].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(color: Colors.redAccent),
                child: Center(
                  child: Text(
                    'text $i',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ));
          },
        );
      }).toList(),
    );
  }
}
