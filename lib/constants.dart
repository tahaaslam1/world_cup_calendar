import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const kPrimaryColor = Color(0xFFFFFFFF);
const kAppBarBackgroundColor = Color(0xFF0C3C72);
const kAppBackgroundColor = Color(0xFFE1E1E1);
const kContainersShadowColor = Color(0xFF000000);
const kDaysLeftContainerColor = Color(0xFFF0F2F6);
const kCalendarCellColor = Color(0xFFF2F6FF);
const kFocusedCalendarCellColor = Color(0xFFFC4600);
const kCalendarDayColor = Color(0xFF1A1A1A);

var kCustomCalendarHeaderStyle = HeaderStyle(
  titleCentered: true,
  formatButtonVisible: false,
  headerPadding: EdgeInsets.only(
    left: 20.0.w,
    right: 20.0.w,
    top: 24.0.h,
    bottom: 40.0.h,
  ),
  leftChevronIcon: const FaIcon(
    FontAwesomeIcons.caretLeft,
  ),
  rightChevronIcon: const FaIcon(
    FontAwesomeIcons.caretRight,
  ),
  titleTextStyle: TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeight.w700,
    fontFamily: 'Roboto',
    fontStyle: FontStyle.normal,
  ),
);
