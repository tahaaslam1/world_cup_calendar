import 'package:flutter/material.dart';

class MatchCard extends StatelessWidget {
  final String homeTeamFlag;
  final String awayTeamFlag;
  final String homeTeam;
  final String awayTeam;
  final String matchTime;

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
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.25),
            blurRadius: 4,
            spreadRadius: 1,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage(awayTeamFlag),
                height: 38,
                width: 25,
              ),
              Text(
                awayTeam,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            matchTime,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Column(
            children: [
              Image(
                image: AssetImage(homeTeamFlag),
                height: 38,
                width: 25,
              ),
              Text(
                homeTeam,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }
}
