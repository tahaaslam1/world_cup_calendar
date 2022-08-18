import 'package:flutter/material.dart';

import 'presentation/screens/calendar_screen/calendar_screen.dart';


void main() {
  runApp(const WorldCupCalendar());
}

class WorldCupCalendar extends StatelessWidget {
  const WorldCupCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'World Cup Calendar Application',
      home:  CalendarScreen(),
    );
  }
}

