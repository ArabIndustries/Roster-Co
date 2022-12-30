import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/consts/color_consts.dart';
import 'package:roster_co_official/app/modules/task_category/controllers/task_category_controller.dart';

class TaskCategoryView extends GetView<TaskCategoryController> {
  const TaskCategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 20.h,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Text(
            'Tasks',
            style: TextStyle(
                color: Colors.black, fontSize: 21, fontFamily: 'Metropolis'),
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
            child: GetBuilder<TaskCategoryController>(
                //  init: taskCategoryListController(),
                builder: ((_) {
              return (Get.find<TaskCategoryController>()
                      .taskCategoryList
                      .isEmpty)
                  ? Center(
                      child: Wrap(
                        spacing: 10.h,
                        direction: Axis.vertical,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/empty_category.png',
                            height: 150.h,
                          ),
                          Text(
                            'No task categories',
                            style: TextStyle(fontSize: 24.sp),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'Feel free to add,\nPress the button below',
                            style: TextStyle(fontSize: 15.sp),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: Get.find<TaskCategoryController>()
                          .taskCategoryList
                          .length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return TextButton(
                          onPressed: () {
                            // Get.to(
                            //   () => CategoryDetailsScreen(
                            //     categoryId: Get.find<TaskCategoryController>()
                            //         .taskCategoryList[index].idCategory!,
                            //     category:
                            //         Get.find<TaskCategoryController>().taskCategoryList[index].title,
                            //     description: Get.find<TaskCategoryController>()
                            //         .taskCategoryList[index].description,
                            //   ),
                            //   transition: Transition.cupertino,
                            // );
                          },
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: ColorList().bgColorList[index],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  IconData(
                                    Get.find<TaskCategoryController>()
                                        .taskCategoryList[index]
                                        .icon,
                                    fontPackage: 'font_awesome_flutter',
                                    fontFamily: 'FontAwesomeSolid',
                                  ),
                                  color: ColorList().iconColorList[index],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  Get.find<TaskCategoryController>()
                                      .taskCategoryList[index]
                                      .title,
                                  style: const TextStyle(
                                      fontSize: 21,
                                      fontFamily: 'Metropolis',
                                      color: Colors.black),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Text(
                                        'Review',
                                        // 'Review',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Metropolis',
                                          color:
                                              ColorList().iconColorList[index],
                                        ),
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.arrowRightLong,
                                      color: ColorList().iconColorList[index],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
            })))
      ],
    );
  }
}
