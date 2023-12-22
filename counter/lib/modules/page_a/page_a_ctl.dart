import 'package:counter/app_ctl.dart';
import 'package:counter/app_routes.dart';
import 'package:get/get.dart';

class PageACtl extends GetxController {
  var c = Get.find<AppCtl>();

  void IncreaseByOne() {
    c.Increase(1);
  }

  void Reset() {
    c.counter.value = 0;
  }

  void ChangePage() {
    IncreaseByOne();
    Get.toNamed(Routes.b);
  }
}
