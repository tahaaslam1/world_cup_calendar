import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:world_cup_calendar/constants.dart';
import 'package:world_cup_calendar/models/match.dart';

import 'package:world_cup_calendar/presentation/screens/match_screen/local_widgets/match_card.dart';
import 'package:world_cup_calendar/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchScreen extends StatelessWidget {
  final List<Match> matches;

  const MatchScreen({Key? key, required this.matches}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kAppBackgroundColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(76.0.h),
          child: const CustomAppBar(
            title: 'Matches',
            isMatch: true,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: kContainersShadowColor.withOpacity(0.25),
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                height: 48.h,
                child: Center(
                  child: Text(
                    '${matches.first.matchDateTime.day} ${DateFormat('MMMM').format(matches.first.matchDateTime)} ${matches.first.matchDateTime.year}',
                    style:  TextStyle(
                      fontSize: 20.sp,
                      color: kFocusedCalendarCellColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: matches.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      MatchCard(
                        homeTeamFlag: matches[index].homeTeam.countryFlag,
                        awayTeamFlag: matches[index].awayTeam.countryFlag,
                        homeTeam: matches[index].homeTeam.countryName,
                        awayTeam: matches[index].awayTeam.countryName,
                        matchTime: matches[index].matchDateTime,
                      ),
                      SizedBox(
                        height: 20.0.h,
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
