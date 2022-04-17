import 'package:flutter/material.dart';
import 'package:pizza_delivery/const/decoration.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: AppDecorations.generalDecoration(),
      height: 46,
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          hintText: 'Search',
          prefixIcon: Icon(Icons.search),
          suffixIcon: Icon(Icons.close),
          // prefixIconColor: Colors.grey,
          // suffixIconColor: Colors.grey,
        ),
      ),
    );
  }
}
