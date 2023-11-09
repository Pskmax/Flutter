import 'package:flutter/material.dart';

class CategoryBox extends StatelessWidget {
  const CategoryBox({
    super.key,
    required this.category,
    required this.appTheme,
  });

  final List category;
  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Chip(
          padding: EdgeInsets.all(5),
          label: Row(
            children: [
              Icon(category[0]),
              SizedBox(
                width: 5,
              ),
              Text(
                category[1],
                style: TextStyle(color: appTheme['titleText']),
              ),
            ],
          )),
    );
  }
}
