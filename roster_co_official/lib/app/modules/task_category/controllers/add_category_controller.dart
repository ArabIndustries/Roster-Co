import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/task_category/controllers/task_category_controller.dart';

class AddCategoryController extends GetxController {
  addCategory() {
    final category = TaskCategoryModel(
      icon: Get.find<TaskCategoryController>().selectedIcon!.codePoint,
      title: Get.find<TaskCategoryController>().titleController.text.trim(),
      description:
          Get.find<TaskCategoryController>().descController.text.trim(),
    );
    Get.find<TaskCategoryController>().add(category);
    Get.find<TaskCategoryController>().resetIcon();
    Get.back();
  }
}

class CustomBottomSheetText extends GetView {
  final String text;
  const CustomBottomSheetText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Metropolis', color: Colors.black, fontSize: 20.sp),
    );
  }
}

var downIcon = Icon(
  Icons.keyboard_arrow_down_rounded,
  color: Colors.black,
  size: 24.w,
);
