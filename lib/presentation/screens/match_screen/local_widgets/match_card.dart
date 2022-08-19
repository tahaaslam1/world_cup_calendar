import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:world_cup_calendar/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchCard extends StatelessWidget {
  final String homeTeamFlag;
  final String awayTeamFlag;
  final String homeTeam;
  final String awayTeam;
  final DateTime matchTime;

  const MatchCard({
    Key? key,
    required this.homeTeamFlag,
    required this.awayTeamFlag,
    required this.homeTeam,
    required this.awayTeam,
    required this.matchTime,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(homeTeamFlag),
                  height: 24.h,
                  width: 38.w,
                ),
                SizedBox(
                  height: 8.0.h,
                ),
                Text(
                  homeTeam,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                DateFormat('Hm').format(matchTime),
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(
                    awayTeamFlag,
                  ),
                  height: 24.h,
                  width: 38.w,
                ),
                SizedBox(
                  height: 8.0.h,
                ),
                Text(
                  awayTeam,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
