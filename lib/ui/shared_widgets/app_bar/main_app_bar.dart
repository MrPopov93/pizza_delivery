import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/app_text_styles.dart';
import 'package:pizza_delivery/const/decoration.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0, 90.0);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 24,bottom: 8,left: 16, right: 16),
        // padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children:  [
                Icon(Icons.location_on_outlined),
                Text('Your location',
                    style: AppTextStyles.mainText()),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  width: 42,
                  height: 42,

                  child: const Icon(Icons.shopping_bag_outlined,
                      color: Colors.white, size: 22),
                ),
                const SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red,
                  ),
                  width: 42,
                  height: 42,
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
