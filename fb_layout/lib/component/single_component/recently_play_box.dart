import 'package:flutter/material.dart';

class RecentlyPlayBox extends StatelessWidget {
  const RecentlyPlayBox({
    super.key,
    required this.game,
    required this.appTheme,
  });

  final List game;
  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        // padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: appTheme['shadow'],
              blurRadius: 5,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            child: Image.network(
              game[0],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
