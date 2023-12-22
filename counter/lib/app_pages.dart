import 'package:counter/app_ctl.dart';
import 'package:counter/app_routes.dart';
import 'package:counter/modules/page_a/page_a_ctl.dart';
import 'package:counter/modules/page_a/page_a_scr.dart';
import 'package:counter/modules/page_b/page_b_ctl.dart';
import 'package:counter/modules/page_b/page_b_scr.dart';
import 'package:get/get.dart';

class AppPages {
  static const init = Routes.init;

  static final List<GetPage> routes = [
    GetPage(
      name: Routes.init,
      page: () => const PageAScr(),
      bindings: [
        BindingsBuilder(
          () {
            Get.lazyPut(() => PageACtl());
            Get.lazyPut(() => AppCtl());
          },
        ),
      ],
    ),
    GetPage(
      name: Routes.a,
      page: () => const PageAScr(),
      bindings: [
        BindingsBuilder(
          () {
            Get.lazyPut(() => PageACtl());
            Get.lazyPut(() => AppCtl());
          },
        ),
      ],
    ),
    GetPage(
      name: Routes.b,
      page: () => const PageBScr(),
      binding: BindingsBuilder(
        () {
          return Get.lazyPut(() => PageBCtl());
        },
      ),
    ),
  ];
}
