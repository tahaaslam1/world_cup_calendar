import 'package:flutter/material.dart';

import 'package:world_cup_calendar/presentation/screens/matches_screen/local_widgets/match_card.dart';
import 'package:world_cup_calendar/presentation/widgets/custom_app_bar.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE1E1E1),
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(76.0),
          child: CustomAppBar(
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
                height: 48,
                child: const Center(
                  child: Text(
                    '21 November 2022',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFFD4600),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              ListView(
                shrinkWrap: true,
                children: const [
                  MatchCard(
                    homeTeamFlag: 'assets/countries/senegal.png',
                    awayTeamFlag: 'assets/countries/netherland.png',
                    homeTeam: 'Senegal',
                    awayTeam: 'Netherlands',
                    matchTime: '13:00',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MatchCard(
                    homeTeamFlag: 'assets/countries/senegal.png',
                    awayTeamFlag: 'assets/countries/netherland.png',
                    homeTeam: 'Senegal',
                    awayTeam: 'Netherlands',
                    matchTime: '13:00',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MatchCard(
                    homeTeamFlag: 'assets/countries/senegal.png',
                    awayTeamFlag: 'assets/countries/netherland.png',
                    homeTeam: 'Senegal',
                    awayTeam: 'Netherlands',
                    matchTime: '13:00',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  MatchCard(
                    homeTeamFlag: 'assets/countries/senegal.png',
                    awayTeamFlag: 'assets/countries/netherland.png',
                    homeTeam: 'Senegal',
                    awayTeam: 'Netherlands',
                    matchTime: '13:00',
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
