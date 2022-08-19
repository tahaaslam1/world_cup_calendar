import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:world_cup_calendar/business_logic/providers/count_down_provider.dart';
import 'package:world_cup_calendar/constants.dart';
import 'package:world_cup_calendar/data/tournament_data.dart';
import 'package:world_cup_calendar/presentation/screens/calendar_screen/local_widgets/custom_calendar.dart';
import 'package:world_cup_calendar/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({Key? key}) : super(key: key);

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  @override
  void initState() {
    Provider.of<CountDownProvider>(context, listen: false).startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TournamentData matchData = TournamentData();
    final matches = matchData.getMatchData();
    return SafeArea(
      child: Scaffold(
        backgroundColor: kAppBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(108.0.h),
          child: const CustomAppBar(
            title: 'World Cup\n Calendar',
            isMatch: false,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100.h,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: kContainersShadowColor.withOpacity(0.25),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Tournament starts in',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 8.0.h,
                      ),
                      Container(
                        height: 38.0.h,
                        width: 134.0.w,
                        decoration: BoxDecoration(
                          color: kDaysLeftContainerColor,
                          borderRadius: BorderRadius.circular(4.0.r),
                        ),
                        child: Center(
                          child: Consumer<CountDownProvider>(
                            builder: (context, daysLeft, child) {
                              return Text(
                                '${daysLeft.myDuration.inDays} Days',
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 34.h,
              ),
              CustomCalendar(
                focusedDay: DateTime.utc(2022, DateTime.november, 21),
                firstDay: DateTime.utc(2022, DateTime.november, 1),
                lastDay: DateTime.utc(2022, DateTime.december, 31),
                matches: matches,
                headerStyle: kCustomCalendarHeaderStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
