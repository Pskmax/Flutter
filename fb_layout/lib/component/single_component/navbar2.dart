import 'package:flutter/material.dart';

class NavBar2 extends StatelessWidget {
  const NavBar2({
    super.key,
    required this.appTheme,
  });

  final Map appTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appTheme['bg'],
      padding: EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      child: Row(
        children: <Widget>[
          // ===== HOME =====
          IconButton(
            padding: EdgeInsets.all(5),
            icon: Icon(
              Icons.newspaper,
              size: 35,
              color: appTheme['icon'],
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Spacer(),
          // ===== VIDEO =====
          IconButton(
            padding: EdgeInsets.all(5),
            icon: Icon(
              Icons.desktop_windows_outlined,
              size: 35,
              color: appTheme['icon'],
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          // ===== GAMING =====
          Spacer(),
          IconButton(
            padding: EdgeInsets.all(5),
            icon: Icon(Icons.dashboard_outlined,
                size: 35, color: appTheme['main']),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Spacer(),
          // ===== NOTIFICATION =====
          IconButton(
            padding: EdgeInsets.all(5),
            icon: Icon(
              Icons.notifications_outlined,
              size: 35,
              color: appTheme['icon'],
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Spacer(),
          // ===== MENU =====
          IconButton(
            icon: Icon(
              Icons.menu,
              size: 35,
              color: appTheme['icon'],
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
