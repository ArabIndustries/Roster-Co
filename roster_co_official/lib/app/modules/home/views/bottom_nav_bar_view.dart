import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/home/controllers/home_controller.dart';

class BottomNavBarView extends GetView<HomeController> {
  const BottomNavBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.25),
                spreadRadius: 6,
                blurRadius: 10)
          ]),
      child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: Obx(
            () => BottomNavigationBar(
              currentIndex: Get.find<HomeController>().page.value,
              onTap: (newIndex) {
                // if (newIndex != 1) {
                //   Get.find<HomeController>().bottomNav(newIndex);
                // }
                Get.find<HomeController>().bottomNav(newIndex);
              },
              type: BottomNavigationBarType.fixed,
              selectedItemColor: const Color(0xff3078E5),
              unselectedItemColor: Colors.grey,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              items: const [
                BottomNavigationBarItem(
                    label: 'Home', icon: FaIcon(FontAwesomeIcons.house)),
                BottomNavigationBarItem(
                    label: 'Events',
                    icon: FaIcon(
                      FontAwesomeIcons.solidBell,
                    )),
              ],
            ),
          )),
    );
  }
}

class HomeButtonView extends GetView {
  const HomeButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: const LinearGradient(
              colors: [Color(0xff1F7DE5), Color(0xff5DCCFF)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: TextButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.all(8.h),
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 40.w,
        ),
      ),
    );
  }
}
