import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PickerTheme extends GetView {
  final Widget child;
  const PickerTheme(this.child, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
            dialogTheme: const DialogTheme(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)))),
            fontFamily: 'Metropolis',
            primaryColor: const Color.fromARGB(255, 0, 0, 0),
            colorScheme:
                const ColorScheme.light(primary: Color.fromARGB(255, 0, 0, 0)),
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary)),
        child: child);
  }
}
