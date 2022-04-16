import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/decoration.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0, 80.0);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.deepPurple,
        padding: EdgeInsets.only(top: 30, left: 8,right: 8),
        // padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.location_on_outlined),
                Text('Your location'),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 35,
                  height: 35,
                  color: Colors.red,
                  child: const Icon(Icons.shopping_bag_outlined,
                      color: Colors.white, size: 22),
                ),
                const SizedBox(width: 6),
                Container(
                  width: 35,
                  height: 35,
                  color: Colors.red,
                  child: const Icon(Icons.storage_rounded,
                      color: Colors.white, size: 22),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
