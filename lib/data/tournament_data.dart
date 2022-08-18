import 'package:world_cup_calendar/models/country.dart';
import 'package:world_cup_calendar/models/match.dart';
import 'package:world_cup_calendar/models/tournament.dart';

class TournamentData {
  final tournament = Tournament(
    matches: [
      Match(
        matchId: 1,
        matchDateTime: DateTime.utc(2022, DateTime.november, 21, 13, 00, 00),
        homeTeam: Country(
          countryName: 'Senegal',
          countryFlag: 'assets/countries/senegal.png',
        ),
        awayTeam: Country(
          countryName: 'Netherlands',
          countryFlag: 'assets/countries/netherland.png',
        ),
      ),
      Match(
        matchId: 2,
        matchDateTime: DateTime(2022, DateTime.november, 21, 16, 00, 00),
        homeTeam: Country(
          countryName: 'England',
          countryFlag: 'assets/countries/england.png',
        ),
        awayTeam: Country(
          countryName: 'Iran',
          countryFlag: 'assets/countries/iran.png',
        ),
      ),
      Match(
        matchId: 3,
        matchDateTime: DateTime(2022, DateTime.november, 21, 19, 00, 00),
        homeTeam: Country(
          countryName: 'Qatar',
          countryFlag: 'assets/countries/qatar.png',
        ),
        awayTeam: Country(
          countryName: 'Ecuador',
          countryFlag: 'assets/countries/ecuador.png',
        ),
      ),
      Match(
        matchId: 4,
        matchDateTime: DateTime(2022, DateTime.november, 21, 22, 00, 00),
        homeTeam: Country(
          countryName: 'USA',
          countryFlag: 'assets/countries/usa.png',
        ),
        awayTeam: Country(
          countryName: 'Wales',
          countryFlag: 'assets/countries/wales.png',
        ),
      ),
      Match(
        matchId: 5,
        matchDateTime: DateTime(2022, DateTime.november, 22, 13, 00, 00),
        homeTeam: Country(
          countryName: 'Argentina',
          countryFlag: 'assets/countries/argentina.png',
        ),
        awayTeam: Country(
          countryName: 'Saudia Arabia',
          countryFlag: 'assets/countries/saudia_arabia.ppng',
        ),
      ),
      Match(
        matchId: 6,
        matchDateTime: DateTime(2022, DateTime.november, 22, 16, 00, 00),
        homeTeam: Country(
          countryName: 'Denmark',
          countryFlag: 'assets/countries/denmark.png',
        ),
        awayTeam: Country(
          countryName: 'Tunisia',
          countryFlag: 'assets/countries/tunisia.png',
        ),
      ),
      Match(
        matchId: 7,
        matchDateTime: DateTime(2022, DateTime.november, 22, 19, 00, 00),
        homeTeam: Country(
          countryName: 'Mexico',
          countryFlag: 'assets/countries/mexico.png',
        ),
        awayTeam: Country(
          countryName: 'Poland',
          countryFlag: 'assets/countries/poland.png',
        ),
      ),
      Match(
        matchId: 8,
        matchDateTime: DateTime(2022, DateTime.november, 22, 22, 00, 00),
        homeTeam: Country(
          countryName: 'France',
          countryFlag: 'assets/countries/france.png',
        ),
        awayTeam: Country(
          countryName: 'Australia',
          countryFlag: 'assets/countries/australia.png',
        ),
      ),
      Match(
        matchId: 9,
        matchDateTime: DateTime(2022, DateTime.november, 23, 13, 00, 00),
        homeTeam: Country(
          countryName: 'Morocco',
          countryFlag: 'assets/countries/morocco.png',
        ),
        awayTeam: Country(
          countryName: 'Croatia',
          countryFlag: 'assets/countries/croatia.png',
        ),
      ),
      Match(
        matchId: 10,
        matchDateTime: DateTime(2022, DateTime.november, 23, 16, 00, 00),
        homeTeam: Country(
          countryName: 'Germany',
          countryFlag: 'assets/countries/germany.png',
        ),
        awayTeam: Country(
          countryName: 'Japan',
          countryFlag: 'assets/countries/japan.png',
        ),
      ),
      Match(
        matchId: 11,
        matchDateTime: DateTime(2022, DateTime.november, 23, 19, 00, 00),
        homeTeam: Country(
          countryName: 'Spain',
          countryFlag: 'assets/countries/spain.png',
        ),
        awayTeam: Country(
          countryName: 'Costa Rica',
          countryFlag: 'assets/countries/costa_rica.png',
        ),
      ),
      Match(
        matchId: 12,
        matchDateTime: DateTime(2022, DateTime.november, 23, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Belgium',
          countryFlag: 'assets/countries/belgium.png',
        ),
        awayTeam: Country(
          countryName: 'Canada',
          countryFlag: 'assets/countries/canada.png',
        ),
      ),
      Match(
        matchId: 13,
        matchDateTime: DateTime(2022, DateTime.november, 24, 13, 00, 00),
        homeTeam: Country(
          countryName: 'Switzerland',
          countryFlag: 'assets/countries/switzerland.png',
        ),
        awayTeam: Country(
          countryName: 'Cameroon',
          countryFlag: 'assets/countries/cameron.png',
        ),
      ),
      Match(
        matchId: 14,
        matchDateTime: DateTime(2022, DateTime.november, 24, 16, 00, 00),
        homeTeam: Country(
          countryName: 'Uruguay',
          countryFlag: 'assets/countries/uruguay.png',
        ),
        awayTeam: Country(
          countryName: 'South Korea',
          countryFlag: 'assets/countries/south_korea.png',
        ),
      ),
      Match(
        matchId: 15,
        matchDateTime: DateTime(2022, DateTime.november, 24, 19, 00, 00),
        homeTeam: Country(
          countryName: 'Portugal',
          countryFlag: 'assets/countries/portugal.png',
        ),
        awayTeam: Country(
          countryName: 'Ghana',
          countryFlag: 'assets/countries/ghana.png',
        ),
      ),
      Match(
        matchId: 16,
        matchDateTime: DateTime(2022, DateTime.november, 24, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Brazil',
          countryFlag: 'assets/countries/brazil.png',
        ),
        awayTeam: Country(
          countryName: 'Serbia',
          countryFlag: 'assets/countries/serbia.png',
        ),
      ),
      Match(
        matchId: 17,
        matchDateTime: DateTime(2022, DateTime.november, 25, 13, 00, 00),
        homeTeam: Country(
          countryName: 'Wales',
          countryFlag: 'assets/countries/wales.png',
        ),
        awayTeam: Country(
          countryName: 'Iran',
          countryFlag: 'assets/countries/iran.png',
        ),
      ),
      Match(
        matchId: 18,
        matchDateTime: DateTime(2022, DateTime.november, 25, 16, 00, 00),
        homeTeam: Country(
          countryName: 'Qatar',
          countryFlag: 'assets/countries/qatar.png',
        ),
        awayTeam: Country(
          countryName: 'Senegal',
          countryFlag: 'assets/countries/senegal.png',
        ),
      ),
      Match(
        matchId: 19,
        matchDateTime: DateTime(2022, DateTime.november, 25, 19, 00, 00),
        homeTeam: Country(
          countryName: 'Netherlands',
          countryFlag: 'assets/countries/netherland.png',
        ),
        awayTeam: Country(
          countryName: 'Ecudor',
          countryFlag: 'assets/countries/ecuador.png',
        ),
      ),
      Match(
        matchId: 20,
        matchDateTime: DateTime(2022, DateTime.november, 25, 22, 00, 00),
        homeTeam: Country(
          countryName: 'England',
          countryFlag: 'assets/countries/england.png',
        ),
        awayTeam: Country(
          countryName: 'USA',
          countryFlag: 'assets/countries/usa.png',
        ),
      ),
      Match(
        matchId: 21,
        matchDateTime: DateTime(2022, DateTime.november, 26, 13, 00, 00),
        homeTeam: Country(
          countryName: 'Tunisia',
          countryFlag: 'assets/countries/tunisia.png',
        ),
        awayTeam: Country(
          countryName: 'Australia',
          countryFlag: 'assets/countries/australia.png',
        ),
      ),
      Match(
        matchId: 22,
        matchDateTime: DateTime(2022, DateTime.november, 26, 16, 00, 00),
        homeTeam: Country(
          countryName: 'Poland',
          countryFlag: 'assets/countries/poland.png',
        ),
        awayTeam: Country(
          countryName: 'Saudia Arabia',
          countryFlag: 'assets/countries/saudia_arabia.png',
        ),
      ),
      Match(
        matchId: 23,
        matchDateTime: DateTime(2022, DateTime.november, 26, 19, 00, 00),
        homeTeam: Country(
          countryName: 'France',
          countryFlag: 'assets/countries/france.png',
        ),
        awayTeam: Country(
          countryName: 'Denmark',
          countryFlag: 'assets/countries/denmark.png',
        ),
      ),
      Match(
        matchId: 24,
        matchDateTime: DateTime(2022, DateTime.november, 26, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Argentina',
          countryFlag: 'assets/countries/argentina.png',
        ),
        awayTeam: Country(
          countryName: 'Mexico',
          countryFlag: 'assets/countries/mexico.png',
        ),
      ),
      Match(
        matchId: 25,
        matchDateTime: DateTime(2022, DateTime.november, 27, 13, 00, 00),
        homeTeam: Country(
          countryName: 'Japan',
          countryFlag: 'assets/countries/japan.png',
        ),
        awayTeam: Country(
          countryName: 'Costa Rica',
          countryFlag: 'assets/countries/costa_rica.png',
        ),
      ),
      Match(
        matchId: 26,
        matchDateTime: DateTime(2022, DateTime.november, 27, 16, 00, 00),
        homeTeam: Country(
          countryName: 'Belgium',
          countryFlag: 'assets/countries/belgium.png',
        ),
        awayTeam: Country(
          countryName: 'Morocco',
          countryFlag: 'assets/countries/morocco.png',
        ),
      ),
      Match(
        matchId: 27,
        matchDateTime: DateTime(2022, DateTime.november, 27, 19, 00, 00),
        homeTeam: Country(
          countryName: 'Croatia',
          countryFlag: 'assets/countries/croatia.png',
        ),
        awayTeam: Country(
          countryName: 'Canada',
          countryFlag: 'assets/countries/canada.png',
        ),
      ),
      Match(
        matchId: 28,
        matchDateTime: DateTime(2022, DateTime.november, 27, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Spain',
          countryFlag: 'assets/countries/spain.png',
        ),
        awayTeam: Country(
          countryName: 'Germany',
          countryFlag: 'assets/countries/germany.png',
        ),
      ),
      Match(
        matchId: 29,
        matchDateTime: DateTime(2022, DateTime.november, 28, 13, 00, 00),
        homeTeam: Country(
          countryName: 'Cameroon',
          countryFlag: 'assets/countries/cameron.png',
        ),
        awayTeam: Country(
          countryName: 'Serbia',
          countryFlag: 'assets/countries/serbia.png',
        ),
      ),
      Match(
        matchId: 30,
        matchDateTime: DateTime(2022, DateTime.november, 28, 16, 00, 00),
        homeTeam: Country(
          countryName: 'South Korea',
          countryFlag: 'assets/countries/south_korea.png',
        ),
        awayTeam: Country(
          countryName: 'Ghana',
          countryFlag: 'assets/countries/ghana.png',
        ),
      ),
      Match(
        matchId: 31,
        matchDateTime: DateTime(2022, DateTime.november, 28, 19, 00, 00),
        homeTeam: Country(
          countryName: 'Brazil',
          countryFlag: 'assets/countries/brazil.png',
        ),
        awayTeam: Country(
          countryName: 'Switzerland',
          countryFlag: 'assets/countries/switzerland.png',
        ),
      ),
      Match(
        matchId: 32,
        matchDateTime: DateTime(2022, DateTime.november, 28, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Portugal',
          countryFlag: 'assets/countries/portugal.png',
        ),
        awayTeam: Country(
          countryName: 'Uruguay',
          countryFlag: 'assets/countries/uruguay.png',
        ),
      ),
      Match(
        matchId: 33,
        matchDateTime: DateTime(2022, DateTime.november, 29, 18, 00, 00),
        homeTeam: Country(
          countryName: 'Netherlands',
          countryFlag: 'assets/countries/netherland.png',
        ),
        awayTeam: Country(
          countryName: 'Qatar',
          countryFlag: 'assets/countries/qatar.png',
        ),
      ),
      Match(
        matchId: 34,
        matchDateTime: DateTime(2022, DateTime.november, 29, 18, 00, 00),
        homeTeam: Country(
          countryName: 'Ecuador',
          countryFlag: 'assets/countries/ecuador.png',
        ),
        awayTeam: Country(
          countryName: 'Senegal',
          countryFlag: 'assets/countries/senegal.png',
        ),
      ),
      Match(
        matchId: 35,
        matchDateTime: DateTime(2022, DateTime.november, 29, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Wales',
          countryFlag: 'assets/countries/wales.png',
        ),
        awayTeam: Country(
          countryName: 'England',
          countryFlag: 'assets/countries/england.png',
        ),
      ),
      Match(
        matchId: 36,
        matchDateTime: DateTime(2022, DateTime.november, 29, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Iran',
          countryFlag: 'assets/countries/iran.png',
        ),
        awayTeam: Country(
          countryName: 'USA',
          countryFlag: 'assets/countries/usa.png',
        ),
      ),
      Match(
        matchId: 37,
        matchDateTime: DateTime(2022, DateTime.november, 30, 18, 00, 00),
        homeTeam: Country(
          countryName: 'Australia',
          countryFlag: 'assets/countries/australia.png',
        ),
        awayTeam: Country(
          countryName: 'Denmark',
          countryFlag: 'assets/countries/denmark.png',
        ),
      ),
      Match(
        matchId: 38,
        matchDateTime: DateTime(2022, DateTime.november, 30, 18, 00, 00),
        homeTeam: Country(
          countryName: 'Tunisia',
          countryFlag: 'assets/countries/tunisia.png',
        ),
        awayTeam: Country(
          countryName: 'France',
          countryFlag: 'assets/countries/france.png',
        ),
      ),
      Match(
        matchId: 39,
        matchDateTime: DateTime(2022, DateTime.november, 30, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Poland',
          countryFlag: 'assets/countries/poland.png',
        ),
        awayTeam: Country(
          countryName: 'Argentina',
          countryFlag: 'assets/countries/argentina.png',
        ),
      ),
      Match(
        matchId: 40,
        matchDateTime: DateTime(2022, DateTime.november, 30, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Saudi Arabia',
          countryFlag: 'assets/countries/saudia_arabia.png',
        ),
        awayTeam: Country(
          countryName: 'Mexico',
          countryFlag: 'assets/countries/mexico.png',
        ),
      ),
      Match(
        matchId: 41,
        matchDateTime: DateTime(2022, DateTime.december, 1, 18, 00, 00),
        homeTeam: Country(
          countryName: 'Croatia',
          countryFlag: 'assets/countries/croatia.png',
        ),
        awayTeam: Country(
          countryName: 'Belgium',
          countryFlag: 'assets/countries/belgium.png',
        ),
      ),
      Match(
        matchId: 42,
        matchDateTime: DateTime(2022, DateTime.december, 1, 18, 00, 00),
        homeTeam: Country(
          countryName: 'Canada',
          countryFlag: 'assets/countries/canada.png',
        ),
        awayTeam: Country(
          countryName: 'Morocco',
          countryFlag: 'assets/countries/morocco.png',
        ),
      ),
      Match(
        matchId: 43,
        matchDateTime: DateTime(2022, DateTime.december, 1, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Japan',
          countryFlag: 'assets/countries/japan.png',
        ),
        awayTeam: Country(
          countryName: 'Spain',
          countryFlag: 'assets/countries/spain.png',
        ),
      ),
      Match(
        matchId: 44,
        matchDateTime: DateTime(2022, DateTime.december, 1, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Costa Rica',
          countryFlag: 'assets/countries/costa_rica.png',
        ),
        awayTeam: Country(
          countryName: 'Germany',
          countryFlag: 'assets/countries/germany.png',
        ),
      ),
      Match(
        matchId: 45,
        matchDateTime: DateTime(2022, DateTime.december, 2, 18, 00, 00),
        homeTeam: Country(
          countryName: 'Ghana',
          countryFlag: 'assets/countries/ghana.png',
        ),
        awayTeam: Country(
          countryName: 'Uruguay',
          countryFlag: 'assets/countries/uruguay.png',
        ),
      ),
      Match(
        matchId: 46,
        matchDateTime: DateTime(2022, DateTime.december, 2, 18, 00, 00),
        homeTeam: Country(
          countryName: 'South Korea',
          countryFlag: 'assets/countries/south_korea.png',
        ),
        awayTeam: Country(
          countryName: 'Portugal',
          countryFlag: 'assets/countries/portugal.png',
        ),
      ),
      Match(
        matchId: 47,
        matchDateTime: DateTime(2022, DateTime.december, 2, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Serbia',
          countryFlag: 'assets/countries/serbia.png',
        ),
        awayTeam: Country(
          countryName: 'Switzerland',
          countryFlag: 'assets/countries/switerland.png',
        ),
      ),
      Match(
        matchId: 48,
        matchDateTime: DateTime(2022, DateTime.december, 2, 22, 00, 00),
        homeTeam: Country(
          countryName: 'Cameroon',
          countryFlag: 'assets/countries/cameron.png',
        ),
        awayTeam: Country(
          countryName: 'Brazil',
          countryFlag: 'assets/countries/brazil.png',
        ),
      ),
    ],
  );
}
