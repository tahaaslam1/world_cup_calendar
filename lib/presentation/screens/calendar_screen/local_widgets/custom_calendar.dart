import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:world_cup_calendar/constants.dart';
import 'package:world_cup_calendar/presentation/screens/match_screen/match_screen.dart';
import 'package:world_cup_calendar/models/match.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCalendar extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime firstDay;
  final DateTime lastDay;
  final HeaderStyle headerStyle;
  final List<Match> matches;

  const CustomCalendar({
    Key? key,
    required this.focusedDay,
    required this.firstDay,
    required this.lastDay,
    required this.headerStyle,
    required this.matches,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.fromLTRB(6.w, 0.h, 6.w, 8.h),
      padding:  EdgeInsets.only(bottom: 28.0.h,left : 8.0.w,right : 8.0.w),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(12.0.r),
        boxShadow: [
          BoxShadow(
            color: kContainersShadowColor.withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: TableCalendar(
        rowHeight: 52.0.h,
        onDaySelected: (selectedDay, focusedDay) {
          List<Match> matchesOnThisDay = [];

          for (int i = 0; i < matches.length; ++i) {
            if (selectedDay.day == matches[i].matchDateTime.day) {
              matchesOnThisDay.add(matches[i]);
            }
          }
          if ((selectedDay.day >= 21 &&
                  selectedDay.month == DateTime.november &&
                  selectedDay.day <= 30) ||
              (selectedDay.day >= 1 &&
                  selectedDay.month == DateTime.december &&
                  selectedDay.day <= 2)) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MatchScreen(matches: matchesOnThisDay)));
          } else if (selectedDay.day >= 3 &&
              selectedDay.month == DateTime.december &&
              selectedDay.day <= 18) {
            showCupertinoDialog(
              context: context,
              barrierDismissible: true,
              builder: (_) => AlertDialog(
                title: const Text('TBD'),
                content: const Text('Matches on this day are to be decided..'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'OK',
                      style: TextStyle(
                        color: kAppBarBackgroundColor,
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            showCupertinoDialog(
              context: context,
              barrierDismissible: true,
              builder: (_) => AlertDialog(
                title: const Text('No Matches'),
                content: const Text('There are no matches on this day'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'OK',
                      style: TextStyle(color: kAppBarBackgroundColor),
                    ),
                  ),
                ],
              ),
            );
          }
        },
        focusedDay: focusedDay,
        firstDay: firstDay,
        lastDay: lastDay,
        calendarFormat: CalendarFormat.month,
        daysOfWeekVisible: false,
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, _) {
            if ((day.day >= 21 &&
                    day.month == DateTime.november &&
                    day.day <= 30) ||
                (day.day >= 1 &&
                    day.month == DateTime.december &&
                    day.day <= 2)) {
              return Padding(
                padding:  EdgeInsets.symmetric(horizontal : 3.0.w),
                child: Container(
                  height: 38.0.h,
                  width: 45.0.w,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    color: kCalendarCellColor,
                    boxShadow: [
                      BoxShadow(
                        color: kContainersShadowColor.withOpacity(0.25),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(4.0.r),
                    border: Border.all(
                      color: kFocusedCalendarCellColor,
                    ),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only(top: 5.0.h, right: 6.0.w),
                    child: Text(
                      '${day.day}',
                      style:  TextStyle(
                        color: kCalendarDayColor,
                        fontSize: 12.0.sp,
                        fontFamily: 'Gadugi',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal : 3.0.w),
                child: Container(
                  height: 38.0.h,
                  width: 45.0.w,
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                      color: kCalendarCellColor,
                      boxShadow: [
                        BoxShadow(
                          color: kContainersShadowColor.withOpacity(0.25),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(4.0.r)),
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0.h, right: 6.0.w),
                    child: Text(
                      '${day.day}',
                      style:  TextStyle(
                        color: kCalendarDayColor,
                        fontSize: 12.0.sp,
                        fontFamily: 'Gadugi',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              );
            }
          },
          disabledBuilder: (context, day, focusedDay) {
            return Padding(
              padding:EdgeInsets.symmetric(horizontal : 3.0.w),
              child: Container(
                height: 38.0.h,
                width: 45.0.w,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    color: kCalendarCellColor,
                    boxShadow: [
                      BoxShadow(
                        color: kContainersShadowColor.withOpacity(0.25),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(4.0.r)),
              ),
            );
          },
          outsideBuilder: (context, day, focusedDay) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal : 3.0.w),
              child: Container(
                height: 38.0.h,
                width: 45.0.w,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    color: kCalendarCellColor,
                    boxShadow: [
                      BoxShadow(
                        color: kContainersShadowColor.withOpacity(0.25),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(4.0.r)),
              ),
            );
          },
        ),
        headerStyle: headerStyle,
      ),
    );
  }
}
