import 'package:world_cup_calendar/models/country.dart';

class Match{
  final int matchId;
  final DateTime matchDateTime;
  final Country homeTeam;
  final Country awayTeam;

  Match({
    required this.matchDateTime,
    required this.homeTeam,
    required this.awayTeam,
    required this.matchId,
  });
}
