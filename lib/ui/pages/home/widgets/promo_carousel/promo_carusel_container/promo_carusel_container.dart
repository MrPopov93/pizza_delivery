import 'package:flutter/cupertino.dart';

class PromoCaruselModelEl extends StatelessWidget{
  final PromoCarouselModel promoCarouselModel;
  
  const PromoCaruselModelEl({required this.promoCarouselModel,
    Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 300,
      child: (
      Row(
        children: [
          Image.asset(promoCarouselModel.PromoImage,),
          Text(promoCarouselModel.name),
        ],
      )),
      );
    
  }
}

