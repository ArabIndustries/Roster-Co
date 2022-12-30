import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/events/controllers/events_controller.dart';

class EventsView extends GetView<EventsController> {
  const EventsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'EventsView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
