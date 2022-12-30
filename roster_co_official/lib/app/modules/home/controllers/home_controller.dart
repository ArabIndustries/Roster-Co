import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/home/controllers/quotes_controller_controller.dart';

class HomeController extends GetxController {
  RxInt page = 0.obs;
  final pages = [
    Column(
      children: const [
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
}

class HomeSectionView extends GetView {
  final Widget page;
  const HomeSectionView({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            children: [
              const QuotesCard(),
              SizedBox(
                height: 20.h,
              ),
              page
            ],
          ),
        ),
      ],
    );
  }
}
