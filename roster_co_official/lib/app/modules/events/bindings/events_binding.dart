import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/events/controllers/add_event_controller.dart';
import 'package:roster_co_official/app/modules/events/controllers/events_controller.dart';

class EventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddEventController>(
      () => AddEventController(),
    );
    Get.lazyPut<EventsController>(
      () => EventsController(),
    );
  }
}
