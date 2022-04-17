class PromoCaruselModel {
  final String title;
  final String description;
  final String promoImage;
  final PromoTypes promoTypes;

  PromoCaruselModel({
    required this.title,
    required this.description,
    required this.promoImage,
    required this.promoTypes,
  });
}

enum PromoTypes { huge, regular, empty }
