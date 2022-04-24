import 'package:pizza_delivery/const/asset_images.dart';
import 'package:pizza_delivery/models/PromoCaruselModel/promo_carusel_model.dart';
import 'package:pizza_delivery/models/pizza/pizza_model.dart';
import 'package:pizza_delivery/models/pizza_card/pizza_card.dart';
import 'package:pizza_delivery/models/place/place_model.dart';
import 'package:pizza_delivery/models/up_menu/up_menu.dart';
import 'package:pizza_delivery/models/up_menu_card/up_manu_card.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/promo_carousel/promo_carousel.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/promo_carousel/promo_carusel_container/promo_carusel_container.dart';
import 'package:pizza_delivery/ui/pages/home/widgets/up_menu/up_menu.dart';

class DummyData {
  static final List<PizzaModel> dummyPizza = [
    PizzaModel(name: 'Margarita', image: AssetImages.pizzaMargarita, description: 'description', price: 20, size: 2),
    PizzaModel(name: 'Apolinaria', image: AssetImages.pizzaApolinaria, description: 'description', price: 17, size: 1),
    PizzaModel(name: 'Napolino', image: AssetImages.pizzaNapolino, description: 'description', price: 15.4, size: 1),
  ];

  static final List<PlaceModel> dummyPlaces = [
    PlaceModel(
      name: 'SkyPizza',
      address: 'Dobrovolskogo 23',
      rating: 4.3,
      commuteTime: 15,
      commitDistance: 3,
      imagePreview: PhotoRestourants.restourantSkyPizza,
    ),
    PlaceModel(
      name: 'Mafia',
      address: 'Zakory 26',
      rating: 4.6,
      commuteTime: 12,
      commitDistance: 10,
      imagePreview: PhotoRestourants.restourantMafia,
    ),
    PlaceModel(
      name: 'RestoPresto',
      address: 'Dniprovska 2',
      rating: 4.0,
      commuteTime: 5,
      commitDistance: 15,
      imagePreview: PhotoRestourants.restourantRestoPresto,
    ),
    PlaceModel(
      name: 'Bufet',
      address: 'Moskovskiy prospekt 256',
      rating: 4.8,
      commuteTime: 23,
      commitDistance: 6,
      imagePreview: PhotoRestourants.restourantBufet,
    ),
  ];

  static final List<UpMenuModel> dummyMenu = [
    UpMenuModel(
      icon: UpMenuIcons.dishes,
      name: 'Dishes',
    ),
    UpMenuModel(
      icon: UpMenuIcons.drinks,
      name: 'Drinks',
    ),
    UpMenuModel(
      icon: UpMenuIcons.pizza,
      name: 'Pizza',
    ),
    UpMenuModel(
      icon: UpMenuIcons.dessert,
      name: 'Dessert',
    ),
  ];

  static final List<PromoCaruselModel> dummyPromo = [
    PromoCaruselModel(
        promoTypes: PromoTypes.huge, description: '10% discount when \nordering', title: 'New hot \nsandwich!', promoImage: PromoPhoto.hot),
    PromoCaruselModel(
      promoTypes: PromoTypes.regular,
      description: 'Does low-moisture mozzarella melt well? Yes. This is one limber '
          'cheese that never forgets to stretch. As well as bringing stringy cheesiness,'
          ' it bubbles and browns like a dream.How to use low moisture mozzarella on pizza:',
      title: 'Cheese pizza',
      promoImage: PromoPhoto.cheese,
    ),
    PromoCaruselModel(
      promoTypes: PromoTypes.empty,
      description: 'lololo',
      title: 'text2',
      promoImage: PromoPhoto.classic,
    ),
  ];

  static final
      // List<UpMenuCardModel>
      dummyMenuCard = [
    UpMenuCardModel(title: 'All'),
    UpMenuCardModel(title: 'Pizza'),
    UpMenuCardModel(title: 'Drinks'),
    UpMenuCardModel(title: 'Snacks'),
    UpMenuCardModel(title: 'Salad'),
  ];

  static final List<PizzaCardModel> dummyPizzaCard = [
    PizzaCardModel(
      name: 'Pizza with chicken',
      image: AssetImages.pizzacheese,
      rating: 2.5,
      price: 19.99,
      weight: 300,
    ),
    PizzaCardModel(
      name: 'Pizza hot',
      image: AssetImages.pizzahot,
      rating: 4.5,
      price: 25,
      weight: 350,
    ),
    PizzaCardModel(
      name: 'Pizza classic',
      image: AssetImages.pizzaclassic,
      rating: 5.0,
      price: 19.99,
      weight: 300,
    ),
    PizzaCardModel(
      name: 'Pizza Margarita',
      image: AssetImages.pizzaMargarita,
      rating: 3.5,
      price: 19.99,
      weight: 300,
    ),
  ];
}
