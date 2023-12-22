import 'package:counter/app_ctl.dart';
import 'package:counter/app_routes.dart';
import 'package:get/get.dart';

class PageBCtl extends GetxController {
  var c = Get.find<AppCtl>();

  void DecreaseByOne() {
    if (c.counter.value > 0) {
      c.Decrease(1);
    }
  }

  void Reset() {
    c.counter.value = 0;
  }

  void ChangePage() {
    DecreaseByOne();
    Get.toNamed(Routes.a);
  }
}
