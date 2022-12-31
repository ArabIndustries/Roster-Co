import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class EventsController extends GetxController {
  DateTime todayDate = DateTime.now();
  final padding = MediaQuery.of(Get.context!).viewPadding;
  String todayDay = DateFormat.d().format(DateTime.now());
  String todayMonth = DateFormat.MMM().format(DateTime.now());
  DateTime pickedDate = DateTime.now();
  GlobalKey<FormState> formKey = GlobalKey();
  TimeOfDay pickedTime = TimeOfDay.now();
  TextEditingController nameController = TextEditingController();
  String selectedTime = DateFormat.jm().format(DateTime.now()).toString();
  String selectedDate =
      '${DateFormat.d().format(DateTime.now())} ${DateFormat.MMM().format(DateTime.now())}';
  String repeatValue = 'Once';
  var itemsRepeat = [
    'Once',
    'Daily',
    'Weekly',
    'Monthly',
    'Yearly',
  ];

  updateDate() {
    todayDay = DateFormat.d().format(pickedDate);
    todayMonth = DateFormat.MMM().format(pickedDate);
    selectedDate = '$todayDay $todayMonth';
    update();
  }

  updateTime(BuildContext context) {
    selectedTime = pickedTime.format(context);
    update();
  }

  updateRepeat(String value) {
    repeatValue = value;
    update();
  }

  // clearAllData() {
  //   nameController.clear();
  //   todayDay = DateFormat.d().format(DateTime.now());
  //   todayMonth = DateFormat.MMM().format(DateTime.now());
  //   pickedDate = DateTime.now();
  //   pickedTime = TimeOfDay.now();
  //   selectedTime = DateFormat.jm().format(DateTime.now()).toString();
  //   selectedDate =
  //       '${DateFormat.d().format(DateTime.now())} ${DateFormat.MMM().format(DateTime.now())}';
  //   repeatValue = 'Once';
  // }

  addEventFunction() async {
    final id = int.parse(
        DateTime.now().millisecondsSinceEpoch.toString().substring(0, 9));
    // final event = CreateEventModel(
    //     idNotify: id,
    //     title: nameController.text.trim(),
    //     dueDate: pickedDate.toString().substring(0, 10),
    //     dueTime: selectedTime.toString(),
    //     repeat: repeatValue);
    // await EventFunction().addEvent(event);
    // await EventFunction().getAllEvents();
    // NotificationServiceEvent().showNotification(
    // id,
    // nameController.text.trim(),
    // DateTime(pickedDate.year, pickedDate.month, pickedDate.day,
    //     pickedTime.hour, pickedTime.minute),
    Get.back();
    // clearAllData();
  }
}
