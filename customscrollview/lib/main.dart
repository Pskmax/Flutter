import 'package:customscrollview/modules/book_store/book_store_scr.dart';
import 'package:customscrollview/modules/page_a/page_a_scr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'meb',
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.green,
          onPrimary: Colors.white,
          secondary: Color.fromARGB(255, 42, 96, 44),
          onSecondary: Color.fromARGB(255, 116, 116, 116),
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        useMaterial3: true,
      ),
      // home: BookStoreScr(),
      home: PageAScr(),
    );
  }
}
