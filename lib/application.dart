import 'package:flutter/material.dart';
import 'package:pizza_delivery/ui/pages/home/home_page.dart';
import 'package:pizza_delivery/ui/pages/menu/menu_page.dart';
import 'package:pizza_delivery/ui/shared_widgets/app_bar/main_app_bar.dart';
import 'package:pizza_delivery/ui/shared_widgets/bottom_bar/bottom_bar.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: MainAppBar(),
        body: MenuPage(),
        // body: HomePage(),
        // bottomNavigationBar: BottomBar(),
      ),
    );
  }
}
