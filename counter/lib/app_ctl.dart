import 'package:get/get.dart';

class AppCtl extends GetxController {
  var counter = 0.obs;

  void Increase(int value) {
    counter += 1;
  }

  void Decrease(int value) {
    counter -= 1;
  }
}
