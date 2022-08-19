import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:world_cup_calendar/business_logic/providers/count_down_provider.dart';

import 'presentation/screens/calendar_screen/calendar_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const WorldCupCalendar(),
  );
}

class WorldCupCalendar extends StatelessWidget {
  const WorldCupCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'World Cup Calendar Application',
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => CountDownProvider()),
          ],
          child: const CalendarScreen(),
        ),
      ),
      designSize: const Size(360,640),
    );
  }
}
