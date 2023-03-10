import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:roster_co_official/app/modules/consts/custom_close_button.dart';

Future<IconData?> showIconPicker(
    {required BuildContext context, IconData? defalutIcon}) async {
  final List<IconData> iconMenuItems = [
    FontAwesomeIcons.a,
    FontAwesomeIcons.addressBook,
    FontAwesomeIcons.b,
    FontAwesomeIcons.baby,
    FontAwesomeIcons.babyCarriage,
    FontAwesomeIcons.basketball,
    FontAwesomeIcons.book,
    FontAwesomeIcons.bowlRice,
    FontAwesomeIcons.brain,
    FontAwesomeIcons.briefcase,
    FontAwesomeIcons.briefcaseMedical,
    FontAwesomeIcons.bug,
    FontAwesomeIcons.bugSlash,
    FontAwesomeIcons.c,
    FontAwesomeIcons.calculator,
    FontAwesomeIcons.camera,
    FontAwesomeIcons.champagneGlasses,
    FontAwesomeIcons.chessBoard,
    FontAwesomeIcons.children,
    FontAwesomeIcons.clipboardCheck,
    FontAwesomeIcons.cloudBolt,
    FontAwesomeIcons.cloudMoonRain,
    FontAwesomeIcons.cloudSunRain,
    FontAwesomeIcons.code,
    FontAwesomeIcons.codeBranch,
    FontAwesomeIcons.codeCompare,
    FontAwesomeIcons.cubes,
    FontAwesomeIcons.d,
    FontAwesomeIcons.divide,
    FontAwesomeIcons.dollarSign,
    FontAwesomeIcons.dove,
    FontAwesomeIcons.droplet,
    FontAwesomeIcons.e,
    FontAwesomeIcons.f,
    FontAwesomeIcons.faceGrinHearts,
    FontAwesomeIcons.faceGrinWink,
    FontAwesomeIcons.file,
    FontAwesomeIcons.fileCode,
    FontAwesomeIcons.flask,
    FontAwesomeIcons.flag,
    FontAwesomeIcons.folder,
    FontAwesomeIcons.folderOpen,
    FontAwesomeIcons.g,
    FontAwesomeIcons.ghost,
    FontAwesomeIcons.gift,
    FontAwesomeIcons.globe,
    FontAwesomeIcons.graduationCap,
    FontAwesomeIcons.guitar,
    FontAwesomeIcons.h,
    FontAwesomeIcons.handHoldingDollar,
    FontAwesomeIcons.hashtag,
    FontAwesomeIcons.headphones,
    FontAwesomeIcons.solidHeart,
    FontAwesomeIcons.heartCrack,
    FontAwesomeIcons.heartPulse,
    FontAwesomeIcons.house,
    FontAwesomeIcons.houseChimneyMedical,
    FontAwesomeIcons.i,
    FontAwesomeIcons.infinity,
    FontAwesomeIcons.j,
    FontAwesomeIcons.k,
    FontAwesomeIcons.l,
    FontAwesomeIcons.laptopCode,
    FontAwesomeIcons.m,
    FontAwesomeIcons.mapLocationDot,
    FontAwesomeIcons.microphone,
    FontAwesomeIcons.music,
    FontAwesomeIcons.n,
    FontAwesomeIcons.noteSticky,
    FontAwesomeIcons.o,
    FontAwesomeIcons.p,
    FontAwesomeIcons.palette,
    FontAwesomeIcons.paw,
    FontAwesomeIcons.peace,
    FontAwesomeIcons.penToSquare,
    FontAwesomeIcons.personHiking,
    FontAwesomeIcons.pizzaSlice,
    FontAwesomeIcons.planeDeparture,
    FontAwesomeIcons.podcast,
    FontAwesomeIcons.puzzlePiece,
    FontAwesomeIcons.q,
    FontAwesomeIcons.quoteLeft,
    FontAwesomeIcons.r,
    FontAwesomeIcons.robot,
    FontAwesomeIcons.rocket,
    FontAwesomeIcons.s,
    FontAwesomeIcons.seedling,
    FontAwesomeIcons.shapes,
    FontAwesomeIcons.shareNodes,
    FontAwesomeIcons.shield,
    FontAwesomeIcons.snowflake,
    FontAwesomeIcons.t,
    FontAwesomeIcons.tags,
    FontAwesomeIcons.terminal,
    FontAwesomeIcons.trademark,
    FontAwesomeIcons.truckFast,
    FontAwesomeIcons.u,
    FontAwesomeIcons.solidUser,
    FontAwesomeIcons.userAstronaut,
    FontAwesomeIcons.userClock,
    FontAwesomeIcons.userDoctor,
    FontAwesomeIcons.userGraduate,
    FontAwesomeIcons.userNinja,
    FontAwesomeIcons.userInjured,
    FontAwesomeIcons.userSecret,
    FontAwesomeIcons.userPen,
    FontAwesomeIcons.userShield,
    FontAwesomeIcons.v,
    FontAwesomeIcons.video,
    FontAwesomeIcons.virus,
    FontAwesomeIcons.virusCovid,
    FontAwesomeIcons.virusCovidSlash,
    FontAwesomeIcons.vrCardboard,
    FontAwesomeIcons.w,
    FontAwesomeIcons.wallet,
    FontAwesomeIcons.wheatAwn,
    FontAwesomeIcons.waveSquare,
    FontAwesomeIcons.x,
    FontAwesomeIcons.y,
    FontAwesomeIcons.z,
  ];
  IconData? selectedIcon = defalutIcon;

  await showDialog(
    context: context,
    builder: (_) => AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0))),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Center(
              child: Text(
            'Pick an Icon',
          )),
          const SizedBox(
            width: 20,
          ),
          CustomCloseButton(size: 35.h)
        ],
      ),
      content: Container(
        width: 300,
        height: 300,
        alignment: Alignment.center,
        child: Scrollbar(
          thickness: 5,
          radius: const Radius.circular(10),
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 60,
                  childAspectRatio: 1 / 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: iconMenuItems.length,
              itemBuilder: (_, index) => Container(
                    key: ValueKey(iconMenuItems[index].codePoint),
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: IconButton(
                        color: const Color.fromARGB(255, 56, 56, 56),
                        iconSize: 30,
                        icon: Icon(
                          iconMenuItems[index],
                        ),
                        onPressed: () {
                          selectedIcon = iconMenuItems[index];
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  )),
        ),
      ),
    ),
  );

  return selectedIcon;
}

showIconAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text(
            'Warning!',
            style: TextStyle(color: Colors.red),
          ),
          content:
              const Text('You did not pick an icon, Please choose an icon.'),
          actions: [
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Cancel')),
          ],
        );
      });
}
