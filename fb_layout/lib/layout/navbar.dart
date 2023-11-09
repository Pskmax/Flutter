import 'package:fb_layout/component/single_component/navbar1.dart';
import 'package:fb_layout/component/single_component/navbar2.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    super.key,
    required this.appTheme,
  });

  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ===== SPACE PHONE NAVIGATION BAR =====
        Container(
          color: appTheme['main'],
          height: 25,
        ),
        // ===== APP NAVIGATION BAR  =====
        NavBar1(
          appTheme: appTheme,
        ),
        NavBar2(
          appTheme: appTheme,
        ),
        Container(
          height: 1,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: appTheme['border'],
              ),
            ),
          ),
        )
      ],
    );
  }
}
