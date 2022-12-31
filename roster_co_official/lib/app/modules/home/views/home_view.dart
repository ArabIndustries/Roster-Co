import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/events/views/add_event_view.dart';
import 'package:roster_co_official/app/modules/events/views/events_view.dart';
import 'package:roster_co_official/app/modules/home/controllers/home_controller.dart';
import 'package:roster_co_official/app/modules/home/views/bottom_nav_bar_view.dart';
import 'package:roster_co_official/app/modules/task_category/views/add_task_category_view.dart';
import 'package:roster_co_official/app/modules/task_category/views/task_category_view.dart';
import 'package:roster_co_official/app/modules/tasks/views/tasks_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.only(top: 2.h, left: 10.w),
          child: CircleAvatar(
            radius: 20.w,
            backgroundImage: const AssetImage('assets/images/profile_pic.png'),
          ),
          // Obx(
          //   () => (_profileController.image.value.isNotEmpty)
          //       ? CircleAvatar(
          //           backgroundImage: FileImage(
          //           File(_profileController.image.value),
          //         ))
          //       : (_profileController.assetImage.isEmpty)
          //           ? const CircleAvatar(
          //               backgroundImage:
          //                   AssetImage('assets/images/profile_pic.png'),
          //             )
          //           : CircleAvatar(
          //               backgroundImage: MemoryImage(
          //                 const Base64Decoder()
          //                     .convert(_profileController.assetImage),
          //               ),
          //             ),
          // ),
        ),
        title: Text(
          'Hi, Luha!',
          style: TextStyle(
              color: Colors.black, fontSize: 28.sp, fontFamily: 'Metropolis'),
        ),
        // Obx(
        //   () => Text(
        //     'Hi, ${_profileController.fName}!',
        //     style: const TextStyle(
        //         color: Colors.black, fontSize: 24, fontFamily: 'Metropolis'),
        //   ),
        // ),
        actions: [
          IconButton(
            splashColor: Colors.white,
            highlightColor: Colors.white,
            onPressed: () {
              // Get.to(() => SettingsView(), transition: Transition.cupertino);
            },
            icon: const Image(
              image: AssetImage(
                'assets/icons/menu_icon.png',
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      // body: Container());
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 15.0),
          child: Obx(
            () => IndexedStack(
              index: Get.find<HomeController>().page.value,
              children: const [
                HomeSectionView(page: TaskCategoryView()),
                HomeSectionView(page: EventsView()),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBarView(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextButton(
          onPressed: () {
            (Get.find<HomeController>().page.value == 0)
                ? Get.bottomSheet(const AddTaskCategoryView(),
                    isScrollControlled: true)
                : Get.bottomSheet(const AddEventView(),
                    isScrollControlled: true);
          },
          style: ElevatedButton.styleFrom(
              elevation: 5,
              backgroundColor: Colors.black,
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
      ),
    );
  }
}
