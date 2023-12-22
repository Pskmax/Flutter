import 'package:customscrollview/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageAScr extends StatelessWidget {
  const PageAScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.b);
          },
          child: Text(
            'Go to B',
          ),
        ),
      ),
    );
  }
}
