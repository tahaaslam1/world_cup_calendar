import 'package:flutter/material.dart';

class MatchCard extends StatefulWidget {
   String homeTeamFlag;
   String awayTeamFlag;
   String homeTeam;
   String  awayTeam;
    String matchTime;
    String matchDate;

  MatchCard( 
      {required this.homeTeamFlag,
      required this.awayTeamFlag,
      required this.homeTeam,
      required this.awayTeam,
      required this.matchTime,
      required this.matchDate});

  @override
  State<MatchCard> createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                decoration: new BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withOpacity(0.25),
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: const Offset(0, 4),
                    )
                  ],
                ),
                height: 47,
                width: 360,
                child:  Center(
                  child: Text(
                    '${widget.matchDate}',
                    style: TextStyle(fontSize: 20, color: Color(0xFFFD4600)),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 28,
        ),
        Container(
          height: 70,
          width: 360,
          decoration: new BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0xFF000000).withOpacity(0.25),
                blurRadius: 4,
                spreadRadius: 1,
                offset: const Offset(0, 4),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                   Image(
                    image: AssetImage('${widget.awayTeamFlag}'),
                    height: 38,
                    width: 25,
                  ),
                   Text(
                    '${widget.awayTeam}',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                '${widget.matchTime}',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Image(
                    image: AssetImage('${widget.homeTeamFlag}'),
                    height: 38,
                    width: 25,
                  ),
                   Text(
                    '${widget.homeTeam}',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
