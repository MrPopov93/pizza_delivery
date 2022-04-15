import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(0, 56.0);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('dwada'),
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.orange,
                ),
                SizedBox(width: 6),
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.orange,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
