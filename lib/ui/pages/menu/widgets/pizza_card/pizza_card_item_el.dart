import 'package:flutter/material.dart';

class PizzaCardItemEl extends StatefulWidget {
  final IconData iconData;
  final double rating;

  const PizzaCardItemEl({required this.iconData, required this.rating, Key? key}) : super(key: key);

  @override
  State<PizzaCardItemEl> createState() => _PizzaCardItemElState();
}

class _PizzaCardItemElState extends State<PizzaCardItemEl> {
  late final List<Widget> icons;

  @override
  void initState() {
    super.initState();

    icons = createStatusBar(widget.rating);
  }

  List<Widget> createStatusBar(double rating) {
    final List<Widget> list = [];
    for (int i = 0; i < 5; i++) {
      if (i < rating.floor()) {
        list.add(const Icon(Icons.star, size: 22, color: Colors.orange));
      } else if (i <= rating.floor() && (rating - (rating.truncateToDouble()) != 0)) {
        list.add(const Icon(Icons.star_half, size: 22, color: Colors.orange));
      } else {
        list.add(const Icon(Icons.star_outline, size: 22, color: Colors.grey));
      }
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [...icons, SizedBox(width: 10.0), Text(widget.rating.toString())]);
  }
}
