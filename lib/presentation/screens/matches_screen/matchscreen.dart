import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup_calendar/presentation/screens/matches_screen/local_widgets/matchcard.dart';

class MatchScreen extends StatelessWidget {
  var homeTeamFlag = 'assets/countries/senegal.png';
  var awayTeamFlag = 'assets/countries/netherland.png';
  var homeTeam = 'Senegal';
  var awayTeam = 'Netherland';
  var matchTime = '13:00';
  var matchDate = '21 November 2022';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE1E1E1),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(77.0),
          child: AppBar(
            centerTitle: true,
            backgroundColor: const Color(0xFF0C3C72),
            flexibleSpace: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () => {},
                    icon: const FaIcon(FontAwesomeIcons.caretLeft),
                    color: Colors.white,
                  ),
                  const Image(image: AssetImage("assets/player/messi.png")),
                  Text(
                    'Matches',
                    style: GoogleFonts.inter(
                      textStyle:
                          const TextStyle(fontSize: 37, color: Colors.white),
                    ),
                  ),
                  const Image(image: AssetImage("assets/player/chelsea.png"))
                ],
              ),
            ),
          ),
        ),
        body: MatchCard(
            homeTeamFlag: homeTeamFlag,
            awayTeamFlag: awayTeamFlag,
            homeTeam: homeTeam,
            awayTeam: awayTeam,
            matchTime: matchTime,
            matchDate: matchDate),
      ),
    );
  }
}
