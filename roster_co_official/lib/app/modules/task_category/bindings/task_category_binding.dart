import 'package:get/get.dart';

import 'package:roster_co_official/app/modules/task_category/controllers/add_category_controller.dart';

import '../controllers/task_category_controller.dart';

class TaskCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddCategoryController>(
      () => AddCategoryController(),
    );
    Get.lazyPut<TaskCategoryController>(
      () => TaskCategoryController(),
    );
  }
}
