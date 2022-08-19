import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:world_cup_calendar/constants.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool isMatch;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.isMatch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMatch) {
      return AppBar(
        centerTitle: true,
        backgroundColor: kAppBarBackgroundColor,
        automaticallyImplyLeading: false,
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => {
                Navigator.pop(context),
              },
              icon: FaIcon(
                FontAwesomeIcons.caretLeft,
                size: 20.sp,
              ),
              color: kPrimaryColor,
            ),
            Image(
              image: const AssetImage("assets/player/messi.png"),
              height: 72.h,
              width: 64.w,
            ),
            Text(
              title,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 32.sp,
                  color: Colors.white,
                ),
              ),
            ),
            Image(
              image: const AssetImage("assets/player/chelsea.png"),
              height: 76.h,
              width: 116.w,
            )
          ],
        ),
      );
    } else {
      return AppBar(
        centerTitle: true,
        backgroundColor: kAppBarBackgroundColor,
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: const AssetImage("assets/player/messi.png"),
              height: 100.h,
              width: 88.w,
            ),
            Text(
              title,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  fontSize: 32.sp,
                  color: kPrimaryColor,
                ),
              ),
            ),
            Image(
              image: const AssetImage("assets/player/chelsea.png"),
              height: 92.h,
              width: 92.w,
            )
          ],
        ),
      );
    }
  }
}
