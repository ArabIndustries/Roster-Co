import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitlePadding extends GetView {
  final String title;
  const TitlePadding({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: CreatePageTitle(title: title),
    );
  }
}

class CreatePageTitle extends GetView {
  final String title;
  const CreatePageTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          fontFamily: 'Metropolis', color: Colors.black, fontSize: 15),
    );
  }
}

final textfieldDeco = InputDecoration(
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    contentPadding: const EdgeInsets.all(19),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    hintText: 'Enter here...',
    hintStyle: const TextStyle(
      fontFamily: 'Metropolis',
      color: Color(0xffADADAD),
    ));
final btDeco = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  border: Border.all(
    color: const Color(0xffCBCBCB),
    width: .8,
  ),
);
final textfieldDecoEvent = InputDecoration(
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    contentPadding: const EdgeInsets.all(19),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: Color(0xffCBCBCB), width: .8),
    ),
    hintText: 'Remind me to...',
    hintStyle: const TextStyle(
      fontFamily: 'Metropolis',
      color: Color(0xffADADAD),
    ));

class PickerEventCard extends GetView {
  final IconData icon;
  final double iconSize;
  final String subTitle;
  final Widget title;
  final Widget arrow;
  final Widget six;
  const PickerEventCard({
    Key? key,
    required this.icon,
    required this.subTitle,
    required this.iconSize,
    required this.arrow,
    required this.title,
    required this.six,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffCBCBCB),
          width: .8,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: iconSize,
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subTitle,
                style: const TextStyle(
                    fontFamily: 'Metropolis',
                    color: Color(0xffADADAD),
                    fontSize: 14),
              ),
              title,
            ],
          ),
          six,
          arrow
        ],
      ),
    );
  }
}
