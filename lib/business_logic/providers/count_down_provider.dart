import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:world_cup_calendar/business_logic/days_calculation.dart';

class CountDownProvider extends ChangeNotifier {
  Timer? _countdownTimer;
  Duration _myDuration = Duration(days: daysLeft.abs());

  Duration get myDuration => _myDuration;

  void startTimer() {
    _countdownTimer =
        Timer.periodic(const Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    const reduceSecondsBy = 1;

    final seconds = _myDuration.inSeconds - reduceSecondsBy;
    if (seconds < 0) {
      _countdownTimer!.cancel();
    } else {
      _myDuration = Duration(seconds: seconds);
      notifyListeners();
    }
  }
}
