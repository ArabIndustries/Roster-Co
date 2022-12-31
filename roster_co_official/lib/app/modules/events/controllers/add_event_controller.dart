import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/consts/app_consts.dart';
import 'package:roster_co_official/app/modules/consts/bottom_sheets_consts.dart';
import 'package:roster_co_official/app/modules/events/controllers/events_controller.dart';

class AddEventController extends GetxController {}

class EventDatePicker extends GetView {
  const EventDatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 64,
        child: TextButton(
            onPressed: () {
              datePicker(context);
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
            ),
            child: PickerEventCard(
              icon: FontAwesomeIcons.calendar,
              subTitle: 'Due Date',
              iconSize: 20,
              title: GetBuilder<EventsController>(builder: (_) {
                return Text(
                  Get.find<EventsController>().selectedDate,
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                );
              }),
              six: Expanded(child: SizedBox()),
              arrow: const Icon(
                FontAwesomeIcons.chevronDown,
                size: 17,
                color: Colors.black,
              ),
            )));
  }

  Future datePicker(BuildContext context) async {
    Get.find<EventsController>().pickedDate = (await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now(),
            lastDate: DateTime(2070),
            builder: (context, child) {
              return PickerTheme(child!);
            })) ??
        DateTime.now();
    Get.find<EventsController>().updateDate();
  }
}

class EventTimePicker extends GetView {
  const EventTimePicker({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 64,
        child: TextButton(
            onPressed: () {
              timePicker(context);
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
            ),
            child: PickerEventCard(
              icon: Icons.alarm_on_rounded,
              subTitle: 'Due Time',
              six: Expanded(child: SizedBox()),
              iconSize: 27,
              title: GetBuilder<EventsController>(builder: (_) {
                return Text(
                  Get.find<EventsController>().selectedTime,
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                );
              }),
              arrow: const Icon(
                FontAwesomeIcons.chevronDown,
                size: 17,
                color: Colors.black,
              ),
            )));
  }

  Future timePicker(BuildContext context) async {
    Get.find<EventsController>().pickedTime = (await showTimePicker(
            context: context,
            initialTime: TimeOfDay.now(),
            builder: (context, child) {
              return PickerTheme(child!);
            })) ??
        TimeOfDay.now();
    // ignore: use_build_context_synchronously
    Get.find<EventsController>().updateTime(context);
  }
}
