import 'package:flutter/material.dart';
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

class TitlePadding extends GetView {
  final String title;
  const TitlePadding({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: CreatePageTitle(title: title),
    );
  }
}

class CreatePageTitle extends GetView {
  final String title;
  const CreatePageTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontFamily: 'Metropolis', color: Colors.black, fontSize: 15),
    );
  }
}

final textfieldDeco = InputDecoration(
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    contentPadding: const EdgeInsets.all(19),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    hintText: 'Enter here...',
    hintStyle: const TextStyle(
      fontFamily: 'Metropolis',
      color: Color(0xffADADAD),
    ));
final btDeco = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  border: Border.all(
    color: const Color(0xffCBCBCB),
    width: .8,
  ),
);

class CustomBottomSheetText extends GetView {
  final String text;
  const CustomBottomSheetText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'Metropolis', color: Colors.black, fontSize: 19),
    );
  }
}

var downIcon = const Icon(
  Icons.keyboard_arrow_down_rounded,
  color: Colors.black,
  size: 24,
);
var sixw_8 = const SizedBox(
  width: 80,
);
