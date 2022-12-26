import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/home/controllers/home_controller.dart';
import 'package:roster_co_official/app/modules/home/views/bottom_nav_bar_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(
          padding: const EdgeInsets.only(top: 5, left: 15),
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile_pic.png'),
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
        title: const Text(
          'Hi, Luha!',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontFamily: 'Metropolis'),
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
              children: [
                Column(
                  children: [
                    Flexible(
                      child: ListView(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        children: [
                          //  DashboardView(),
                        ],
                      ),
                    ),
                  ],
                ),
                // const LinksView(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBarView(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: const FloatingButtonView(),
    );
  }
}
