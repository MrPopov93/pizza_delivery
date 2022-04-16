import 'package:pizza_delivery/const/asset_images.dart';
import 'package:pizza_delivery/models/pizza/pizza_model.dart';
import 'package:pizza_delivery/models/place/place_model.dart';
import 'package:pizza_delivery/models/up_menu/up_menu.dart';

class DummyData {
  static final List<PizzaModel> dummyPizza = [
    PizzaModel(
        name: 'Margarita',
        image: AssetImages.pizzaMargarita,
        description: 'description',
        price: 20,
        size: 2),
    PizzaModel(
        name: 'Apolinaria',
        image: AssetImages.pizzaApolinaria,
        description: 'description',
        price: 17,
        size: 1),
    PizzaModel(
        name: 'Napolino',
        image: AssetImages.pizzaNapolino,
        description: 'description',
        price: 15.4,
        size: 1),
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
    UpMenuModel(name: 'Dishes', icon: UpMenuIcons.dishes),
    UpMenuModel(icon: UpMenuIcons.drinks, name: 'Drinks'),
    UpMenuModel(icon: UpMenuIcons.pizza, name: 'Pizza'),
    UpMenuModel(icon: UpMenuIcons.dessert, name: 'Dessert'),
  ];
}
