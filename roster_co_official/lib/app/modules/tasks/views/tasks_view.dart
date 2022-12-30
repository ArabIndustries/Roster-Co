import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/tasks/controllers/tasks_controller.dart';

class TasksView extends GetView<TasksController> {
  const TasksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'TasksView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
