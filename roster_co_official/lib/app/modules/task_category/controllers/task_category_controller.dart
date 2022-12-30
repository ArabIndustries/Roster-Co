import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskCategoryController extends GetxController {
  List<TaskCategoryModel> taskCategoryList = [];
  add(TaskCategoryModel value) {
    taskCategoryList.add(value);
    update();
  }

  IconData? selectedIcon;
  resetIcon() {
    selectedIcon = null;
    update();
  }

  updateIcon(IconData result) {
    selectedIcon = result;
    update();
  }

  final padding = MediaQuery.of(Get.context!).viewPadding;
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
}

class TaskCategoryModel {
  int? idCategory;
  final String title;
  final int icon;
  final String description;
  TaskCategoryModel({
    this.idCategory,
    required this.icon,
    required this.title,
    required this.description,
  });
}
