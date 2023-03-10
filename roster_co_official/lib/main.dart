import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/consts/home_consts.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Roster Co",
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
            theme: appTheme,
          );
        }),
  );
}
