final tournamentStartDate = DateTime(2022, DateTime.november, 21);
final dateToday = DateTime.now();

int daysBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return (to.difference(from).inHours / 24).round();
}

final daysLeft = daysBetween(tournamentStartDate, dateToday);

