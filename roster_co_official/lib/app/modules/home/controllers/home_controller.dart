import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final pages = [
    Column(
      children: [
        // Flexible(
        //   child: DashboardView(),
        // ),
      ],
    ),
    //const LinksView(),
  ];
  bottomNav(newIndex) {
    page.value = newIndex;
    // log('new index: ${newIndex.toString()}');
    // log('page value: ${page.value.toString()}');
    update();
  }

  RxInt page = 0.obs;
}
