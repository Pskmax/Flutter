import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/routes.dart';

class TestScr extends StatelessWidget {
  const TestScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(Routes.todo);
          },
          child: Text('Go to ToDo'),
        ),
      ),
    );
  }
}
