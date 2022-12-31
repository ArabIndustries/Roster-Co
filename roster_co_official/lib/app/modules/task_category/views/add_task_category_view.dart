import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/consts/bottom_sheets_consts.dart';
import 'package:roster_co_official/app/modules/consts/icon_picker.dart';
import 'package:roster_co_official/app/modules/task_category/controllers/add_category_controller.dart';
import 'package:roster_co_official/app/modules/task_category/controllers/task_category_controller.dart';

class AddTaskCategoryView extends GetView<TaskCategoryController> {
  const AddTaskCategoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Get.find<TaskCategoryController>().padding,
      child: SizedBox(
        height: 640.h,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35)),
          ),
          padding: EdgeInsets.all(25.w),
          child: Column(
            children: [
              Flexible(
                child: Form(
                  key: Get.find<TaskCategoryController>().formKey,
                  child: Wrap(
                    runSpacing: 20.h,
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Create New Category',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          TextButton(
                              onPressed: () {
                                Get.back();
                                Get.find<TaskCategoryController>().resetIcon();
                              },
                              child: const Icon(
                                Icons.close,
                                color: Colors.black,
                                size: 35,
                              ))
                        ],
                      ),
                      const TitlePadding(
                        title: 'Category Title',
                      ),
                      TextFormField(
                        style: TextStyle(
                            fontFamily: 'Metropolis', fontSize: 14.sp),
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return "Title is required!";
                          } else {
                            return null;
                          }
                        }),
                        controller:
                            Get.find<TaskCategoryController>().titleController,
                        decoration: textfieldDeco,
                      ),
                      Container(
                          padding: EdgeInsets.all(10.h),
                          decoration: btDeco,
                          child:
                              GetBuilder<TaskCategoryController>(builder: ((_) {
                            return TextButton(
                              onPressed: () async {
                                final IconData? result = await showIconPicker(
                                    context: context,
                                    defalutIcon:
                                        Get.find<TaskCategoryController>()
                                            .selectedIcon);
                                Get.find<TaskCategoryController>().resetIcon();
                                (result == null)
                                    ? Get.find<TaskCategoryController>()
                                        .selectedIcon
                                    : Get.find<TaskCategoryController>()
                                        .updateIcon(result);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  (Get.find<TaskCategoryController>()
                                              .selectedIcon ==
                                          null)
                                      ? Image.asset(
                                          'assets/icons/add_icon.png',
                                          height: 30,
                                        )
                                      : Icon(
                                          Get.find<TaskCategoryController>()
                                              .selectedIcon,
                                          size: 30,
                                          color: Colors.black,
                                        ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  (Get.find<TaskCategoryController>()
                                              .selectedIcon ==
                                          null)
                                      ? const CustomBottomSheetText(
                                          text: 'Pick the icon')
                                      : const CustomBottomSheetText(
                                          text: 'Picked Icon'),
                                  const Expanded(
                                    child: SizedBox(),
                                  ),
                                  downIcon,
                                ],
                              ),
                            );
                          }))),
                      const TitlePadding(title: 'Description'),
                      TextFormField(
                        style: TextStyle(
                            fontFamily: 'Metropolis', fontSize: 14.sp),
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return "Description is required!";
                          } else {
                            return null;
                          }
                        }),
                        controller:
                            Get.find<TaskCategoryController>().descController,
                        decoration: textfieldDeco,
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 45,
                            width: 45,
                            child: FloatingActionButton(
                              onPressed: () {
                                if (Get.find<TaskCategoryController>()
                                    .formKey
                                    .currentState!
                                    .validate()) {
                                  {
                                    if (Get.find<TaskCategoryController>()
                                            .selectedIcon ==
                                        null) {
                                      showIconAlert(context);
                                    } else {
                                      Get.find<AddCategoryController>()
                                          .addCategory();
                                    }
                                  }
                                }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 25,
                              backgroundColor: Colors.black,
                              child: const Icon(
                                Icons.done,
                                size: 33,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
