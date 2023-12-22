import 'package:get/get.dart';
import 'package:to_do_list/modules/test/test_ctl.dart';
import 'package:to_do_list/modules/test/test_scr.dart';
import 'package:to_do_list/modules/todo/todo_ctl.dart';
import 'package:to_do_list/modules/todo/todo_scr.dart';
import 'package:to_do_list/routes.dart';

class AppPages {
  static const init = Routes.test;

  static final routes = [
    GetPage(
      name: Routes.test,
      page: () => const TestScr(),
      binding: BindingsBuilder(
        () {
          Get.lazyPut<TestCtl>(
            () => TestCtl(),
          );
        },
      ),
    ),
    GetPage(
      name: Routes.todo,
      page: () => const ToDoScr(),
      binding: BindingsBuilder(
        () {
          Get.lazyPut<ToDoCtl>(
            () => ToDoCtl(),
          );
        },
      ),
    ),
  ];
}
