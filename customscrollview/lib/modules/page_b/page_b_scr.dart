import 'package:customscrollview/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageBScr extends StatelessWidget {
  const PageBScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.a);
          },
          child: Text(
            'Go to A',
          ),
        ),
      ),
    );
  }
}
