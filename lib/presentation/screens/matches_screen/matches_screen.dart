import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup_calendar/presentation/screens/matches_screen/local_widgets/match_card.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key}) : super(key: key);

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
            flexibleSpace: Row(
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
