import 'package:get/get.dart';

import 'package:roster_co_official/app/modules/home/controllers/quotes_controller_controller.dart';
import 'package:roster_co_official/app/modules/task_category/controllers/add_category_controller.dart';
import 'package:roster_co_official/app/modules/task_category/controllers/task_category_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuotesController>(
      () => QuotesController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<AddCategoryController>(
      () => AddCategoryController(),
    );
    Get.lazyPut<TaskCategoryController>(
      () => TaskCategoryController(),
    );
  }
}
