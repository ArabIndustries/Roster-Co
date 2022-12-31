import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/consts/bottom_sheets_consts.dart';
import 'package:roster_co_official/app/modules/events/controllers/add_event_controller.dart';
import 'package:roster_co_official/app/modules/events/controllers/events_controller.dart';

class AddEventView extends GetView<EventsController> {
  const AddEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Get.find<EventsController>().padding,
      child: SizedBox(
        height: 640.h,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35)),
          ),
          padding: EdgeInsets.all(25.w),
          child: Column(
            children: [
              Flexible(
                child: Form(
                  key: Get.find<EventsController>().formKey,
                  child: Wrap(
                    runSpacing: 16,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            'Create New Event',
                            style: TextStyle(fontSize: 18),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          TextButton(
                              onPressed: () {
                                Get.back();
                              },
                              child: const Icon(
                                Icons.close,
                                color: Colors.black,
                                size: 35,
                              ))
                        ],
                      ),
                      const TitlePadding(
                        title: 'Event Title',
                      ),
                      TextFormField(
                        style: TextStyle(
                            fontFamily: 'Metropolis', fontSize: 14.sp),
                        validator: ((value) {
                          if (value!.isEmpty) {
                            return "Title is required!";
                          } else {
                            return null;
                          }
                        }),
                        controller: Get.find<EventsController>().nameController,
                        decoration: textfieldDecoEvent,
                      ),
                      const EventDatePicker(),
                      const EventTimePicker(),
                      //  const RepeatPicker(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 45,
                            width: 45,
                            child: FloatingActionButton(
                              onPressed: () {
                                if (Get.find<EventsController>()
                                    .formKey
                                    .currentState!
                                    .validate()) {
                                  Get.find<EventsController>()
                                      .addEventFunction();
                                }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              elevation: 10,
                              backgroundColor: Colors.black,
                              child: const Icon(
                                Icons.done,
                                size: 33,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
