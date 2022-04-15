import 'package:pizza_delivery/models/pizza/pizza_model.dart';
import 'package:pizza_delivery/models/place/place_model.dart';

class DummyData {
  static final List<PizzaModel> dummyPizza = [
    PizzaModel(name: 'Margarita', image: 'image', description: 'description', price: 20, size: 2),
    PizzaModel(name: 'Apolinaria', image: 'image', description: 'description', price: 17, size: 1),
    PizzaModel(name: 'Napolino', image: 'image', description: 'description', price: 15.4, size: 1),
  ];

  static final List<PlaceModel> dummyPlaces = [
    PlaceModel(name: 'SkyPizza', address: 'Dobrovolskogo 23', rating: 4.3, commuteTime: 15, imagePreview: 'imagePreview'),
    PlaceModel(name: 'RestoPresto', address: 'Dniprovska 2', rating: 4.0, commuteTime: 5, imagePreview: 'imagePreview'),
    PlaceModel(name: 'Bufet', address: 'Moskovskiy prospekt 256', rating: 4.8, commuteTime: 23, imagePreview: 'imagePreview'),
  ];
}
