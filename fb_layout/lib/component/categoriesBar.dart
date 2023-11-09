import 'package:fb_layout/component/single_component/category_box.dart';
import 'package:flutter/material.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({
    super.key,
    required this.appTheme,
  });

  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    List<List> categories = [
      [Icons.person, "You"],
      [Icons.stream, "Streamers"],
      [Icons.groups, "Groups"],
      [Icons.videogame_asset, "Gamings"],
    ];

    // ===== CATEGORIES BAR =====
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          for (List category in categories)
            CategoryBox(
              category: category,
              appTheme: appTheme,
            ),
        ],
      ),
    );
  }
}
