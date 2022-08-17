import 'package:flutter/material.dart';
import 'package:world_cup_calendar/presentation/screens/matches_screen/matches_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MatchScreen(),
    );
  }
}
