import 'package:counter/app_ctl.dart';
import 'package:counter/app_routes.dart';
import 'package:counter/modules/page_a/page_a_ctl.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageAScr extends StatelessWidget {
  const PageAScr({super.key});
  @override
  Widget build(BuildContext context) {
    var c = Get.find<PageACtl>();
    var t = Get.find<AppCtl>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 219, 175),
      appBar: AppBar(
        title: Text('Page A'),
        automaticallyImplyLeading: false,
        leading: Get.routing.current != Routes.init
            ? BackButton(
                onPressed: () {
                  // c.IncreaseByOne();
                  Get.back();
                },
              )
            : null,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            child: Text(
              'COUNTER',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: Obx(() {
              return Text(
                t.counter.value.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              );
            }),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // c.AddByOne();
                  Get.toNamed(Routes.b);
                  // c.ChangePage();
                },
                child: Text(
                  'Page B',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  c.Reset();
                },
                child: Text(
                  'Reset',
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.green,
                  ),
                ),
                onPressed: () {
                  c.IncreaseByOne();
                },
                child: Text(
                  '+ 1',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
