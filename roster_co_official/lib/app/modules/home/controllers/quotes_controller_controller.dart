import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuotesController extends GetxController {}

class QuotesCard extends GetView<QuotesController> {
  const QuotesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h, bottom: 20.h),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 89, 89, 89),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 15.w,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Daily Motivation!',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Metropolis',
                        fontSize: 18.sp),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '"Life will bring you pain all by itself. Your responsibility is to create joy"',
                    style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16.sp,
                        fontFamily: 'Inter'),
                  ),
                  // Obx(
                  //   (() => Text(
                  //         '" Life will bring you pain all bu itself. Your responsibility is to create joy.',
                  //         style: TextStyle(
                  //             color: Colors.grey[500],
                  //             fontSize: 15,
                  //             fontFamily: 'Inter'),
                  //       )),
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
// "It always seems impossible until its done."
//"Happiness is not by chance, but by choice."