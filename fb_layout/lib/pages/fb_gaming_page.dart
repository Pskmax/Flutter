import 'package:fb_layout/layout/body.dart';
import 'package:fb_layout/layout/navbar.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  // ====== App Theme Settings =====
  final Color mainTheme = const Color.fromARGB(255, 65, 103, 178);
  final Color bgTheme = const Color.fromARGB(255, 255, 255, 255);
  final Color bg2Theme = const Color.fromARGB(20, 0, 0, 0);
  final Color titleText = const Color.fromARGB(255, 0, 0, 0);
  final Color descriptionText = const Color.fromARGB(200, 0, 0, 0);
  final Color border = const Color.fromARGB(80, 0, 0, 0);
  final Color icon = const Color.fromARGB(150, 0, 0, 0);
  final Color shadow = const Color.fromARGB(50, 0, 0, 0);
  // final Color shadow = Colors.red;
  final Color floatingBox = const Color.fromARGB(100, 0, 0, 0);
  final Color live1 = Colors.red;
  final Color live2 = Colors.black;

  @override
  Widget build(BuildContext context) {
    // FB main color, BG color, title text color, icon border color
    Map<String, Color> appTheme = {
      'main': mainTheme,
      'bg': bgTheme,
      'bg2': bg2Theme,
      'title': titleText,
      'description': descriptionText,
      'border': border,
      'icon': icon,
      'shadow': shadow,
      'floating': floatingBox,
      'live1': live1,
      'live2': live2,
    };
    return Scaffold(
        body: Column(
      children: <Widget>[
        // ===== HEADER =====
        Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              NavBar(
                appTheme: appTheme,
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            // ===== BODY =====
            child: Body(
              appTheme: appTheme,
            ),
          ),
        ),
      ],
    ));
  }
}
