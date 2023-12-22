import 'package:counter/app_ctl.dart';
import 'package:get/get.dart';

class AppLife extends SuperController {
  var c = Get.find<AppCtl>();
  @override
  void onDetached() {
    // TODO: implement onDetached
  }

  @override
  void onHidden() {
    // TODO: implement onHidden
  }

  @override
  void onInactive() {
    // TODO: implement onInactive
    print("onInactive called");
  }

  @override
  void onPaused() {
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    // TODO: implement onResumed
    if (c.counter.value > 0) {
      c.Decrease(1);
    }
  }
}
