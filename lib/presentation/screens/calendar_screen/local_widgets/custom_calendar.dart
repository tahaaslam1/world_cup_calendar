import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CustomCalendar extends StatelessWidget {
  final DateTime focusedDay;
  final DateTime firstDay;
  final DateTime lastDay;
  final HeaderStyle headerStyle;
  final Widget route;

  const CustomCalendar({
    Key? key,
    required this.focusedDay,
    required this.firstDay,
    required this.lastDay,
    required this.headerStyle,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      padding: const EdgeInsets.only(bottom: 28.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.25),
            spreadRadius: 1,
            blurRadius: 1,
          ),
        ],
      ),
      child: TableCalendar(
        onDaySelected: (selectedDay, focusedDay) {
          //TODO: resolve this thing if time available
          if ((selectedDay.day >= 21 &&
                  selectedDay.month == DateTime.november &&
                  selectedDay.day <= 30) ||
              (selectedDay.day >= 1 &&
                  selectedDay.month == DateTime.december &&
                  selectedDay.day <= 2)) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return route;
                },
              ),
            );
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
                        color: Color(0xFF0C3C72),
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
                      style: TextStyle(color: Color(0xFF0C3C72)),
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
              return Container(
                height: 40.0,
                width: 44.0,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F6FF),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(
                    color: const Color(0xFFFC4600),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 6.0),
                  child: Text(
                    '${day.day}',
                    style: const TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 12.0,
                      fontFamily: 'Gadugi',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              );
            } else {
              return Container(
                height: 40.0,
                width: 44.0,
                alignment: Alignment.topRight,
                decoration: BoxDecoration(
                    color: const Color(0xFFF2F6FF),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF000000).withOpacity(0.25),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 4),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(4.0)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 6.0),
                  child: Text(
                    '${day.day}',
                    style: const TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 12.0,
                      fontFamily: 'Gadugi',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              );
            }
          },
          disabledBuilder: (context, day, focusedDay) {
            return Container(
              height: 40.0,
              width: 44.0,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                  color: const Color(0xFFF2F6FF),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(4.0)),
            );
          },
          outsideBuilder: (context, day, focusedDay) {
            return Container(
              height: 40.0,
              width: 44.0,
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                  color: const Color(0xFFF2F6FF),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000).withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(4.0)),
            );
          },
        ),
        headerStyle: headerStyle,
      ),
    );
  }
}
