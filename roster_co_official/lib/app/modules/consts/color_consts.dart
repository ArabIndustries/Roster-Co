import 'package:flutter/material.dart';

class ColorList {
  List<Color> bgColorList = [];
  List<Color> iconColorList = [];
  IconData iconPriority = Icons.priority_high_rounded;
  List bgColor = const [
    Color(0xffFEF7E9),
    Color(0xffFFF1F0),
    Color(0xffECF5FF),
    Color(0xffF1EBFF),
    Color.fromARGB(255, 255, 240, 252),
    Color.fromARGB(255, 241, 255, 241),
    Color.fromARGB(255, 234, 255, 255),
    Color.fromARGB(255, 255, 245, 238),
    Color.fromARGB(255, 245, 245, 245),
    Color.fromARGB(255, 240, 240, 255),
  ];

  List iconColor = const [
    Color.fromARGB(255, 255, 198, 133),
    Color(0xffFE8184),
    Color(0xff6DAEEA),
    Color.fromARGB(255, 164, 131, 240),
    Color.fromARGB(255, 235, 132, 214),
    Color.fromARGB(255, 98, 209, 98),
    Color.fromARGB(255, 71, 208, 208),
    Color.fromARGB(255, 230, 163, 115),
    Color.fromARGB(255, 112, 109, 109),
    Color.fromARGB(255, 118, 118, 232),
  ];
  updateColor() {
    bgColorList = List.from(bgColor);
    iconColorList = List.from(iconColor);
    for (var i = 0; i < 10; i++) {
      bgColorList = List.from(bgColorList)..addAll(bgColorList);

      iconColorList = List.from(iconColorList)..addAll(iconColorList);
    }
  }
}
