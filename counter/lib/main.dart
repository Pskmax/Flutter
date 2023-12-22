import 'package:counter/app_ctl.dart';
import 'package:counter/app_life.dart';
import 'package:counter/app_pages.dart';
import 'package:counter/app_routes.dart';
import 'package:counter/modules/page_a/page_a_ctl.dart';
import 'package:counter/modules/page_b/page_b_ctl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(AppCtl());
  Get.put(AppLife());
  runApp(const MyApp());
}

PageACtl get a => Get.find<PageACtl>();
PageBCtl get b => Get.find<PageBCtl>();
AppCtl get app => Get.find<AppCtl>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: AppPages.routes,
      initialRoute: Routes.init,
    );
  }
}
