import 'dart:async';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:world_cup_calendar/business_logic/days_calculation.dart';
import 'package:world_cup_calendar/presentation/screens/calendar_screen/local_widgets/custom_calendar.dart';
import 'package:world_cup_calendar/presentation/screens/matches_screen/matches_screen.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  Timer? countdownTimer;
  Duration myDuration = Duration(days: daysLeft.abs());

  void startTimer() {
    countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void setCountDown() {
    const reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String strDigits(int n) => n.toString().padLeft(2, '0');
    final days = strDigits(myDuration.inDays);
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE1E1E1),
        appBar: AppBar(
          title: const Text('World Cup Calendar'),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF000000).withOpacity(0.25),
                    spreadRadius: 1,
                    blurRadius: 7,
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Tournament starts in',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Container(
                      height: 38.0,
                      color: const Color(0xFFF0F2F6),
                      width: 134.0,
                      child: Center(
                        child: Text(
                          '$days Days',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            CustomCalendar(
              focusedDay: DateTime.utc(2022, DateTime.november, 21),
              firstDay: DateTime.utc(2022, DateTime.november, 1),
              lastDay: DateTime.utc(2022, DateTime.december, 31),
              route: const MatcheScreen(),
              headerStyle: const HeaderStyle(
                titleCentered: true,
                formatButtonVisible: false,
                headerPadding: EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 24.0, bottom: 40.0),
                leftChevronMargin: EdgeInsets.only(
                    left: 124.0), //TODO: check this while using screenUtil...
                rightChevronMargin: EdgeInsets.only(right: 124.0),
                //  leftChevronIcon: ,    //TODO: change icons after merge...
                //  rightChevronIcon: ,
                titleTextStyle: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
