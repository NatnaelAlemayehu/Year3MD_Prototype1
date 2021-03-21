import 'package:fitness_screen/exercise_screens/daily_excercise.dart';
import 'package:flutter/material.dart';
import 'package:fitness_screen/splash_screen.dart';
import 'package:fitness_screen/exercise_screens/excercise_list.dart';
import 'package:fitness_screen/home_screen.dart';
import 'package:fitness_screen/login_screens/login_screen.dart';
import 'package:fitness_screen/exercise_screens/single_excercise.dart';
import 'package:fitness_screen/menu_screens/profile.dart';
import 'package:fitness_screen/menu_screens/reminder.dart';
import 'package:fitness_screen/menu_screens/report.dart';
import 'package:fitness_screen/menu_screens/settings.dart';
import 'package:fitness_screen/menu_screens/sync_workout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'NotoSans'),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        ExcerciseList.id: (context) => ExcerciseList(),
        HomeScreen.id: (context) => HomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SingleExcercise.id: (context) => SingleExcercise(),
        DailyExcercise.id: (context) => DailyExcercise(),
        Profile.id: (context) => Profile(),
        Reminder.id: (context) => Reminder(),
        Report.id: (context) => Report(),
        Settings.id: (context) => Settings(),
        SyncWorkout.id: (context) => SyncWorkout(),
      },
    );
  }
}
