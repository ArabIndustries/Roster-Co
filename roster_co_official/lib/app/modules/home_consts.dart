import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final appTheme = ThemeData(
  textTheme: TextTheme(bodyText2: TextStyle(fontSize: 20.sp)),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      padding: MaterialStateProperty.all(EdgeInsets.zero),
      overlayColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (states.contains(MaterialState.pressed)) {
          return Colors.black12;
        }
        return Colors.transparent;
      }),
    ),
  ),
  fontFamily: 'Montserrat SemiBold',
  primaryColor: const Color(0xff2D9CEA),
);
