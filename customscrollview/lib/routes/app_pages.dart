import 'package:customscrollview/modules/page_a/page_a_ctl.dart';
import 'package:customscrollview/modules/page_a/page_a_scr.dart';
import 'package:customscrollview/modules/page_b/page_b_ctl.dart';
import 'package:customscrollview/modules/page_b/page_b_scr.dart';
import 'package:customscrollview/routes/routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const init = Routes.a;

  static final routes = [
    GetPage(
      name: Routes.a,
      page: () => const PageAScr(),
      binding: BindingsBuilder(
        () {
          Get.lazyPut<PageACtl>(
            () => PageACtl(),
          );
        },
      ),
    ),
    GetPage(
      name: Routes.b,
      page: () => const PageBScr(),
      binding: BindingsBuilder(
        () {
          Get.lazyPut<PageBCtl>(
            () => PageBCtl(),
          );
        },
      ),
    ),
  ];
}
