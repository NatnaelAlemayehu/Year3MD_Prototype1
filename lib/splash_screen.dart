import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:fitness_screen/home_screen.dart';
import 'file:///C:/Users/Nati/AndroidStudioProjects/Cardio_Workout_Flutter_App/lib/login_screens/login_screen.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  static const String id = "splash_screen";

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToHome();
      } else {
        _navigateToLogin();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome() {
    Navigator.pushNamed(context, HomeScreen.id);
  }

  void _navigateToLogin() {
    Navigator.pushNamed(context, LoginScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              SizedBox(
                child: new Opacity(
                  opacity: 1,
                  child: Image.asset('assets/images/fitness.jpg',
                      fit: BoxFit.cover,
                      color: Color.fromRGBO(255, 255, 255, 0.0),
                      colorBlendMode: BlendMode.luminosity),
                ),
                height: 2000.0,
              ),
              Shimmer.fromColors(
                period: Duration(milliseconds: 1500),
                baseColor: Color(0xff7f00ff),
                highlightColor: Color(0xffe100ff),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Cardio",
                    style: TextStyle(
                        fontSize: 90.0,
                        fontFamily: 'Pacifico',
                        shadows: <Shadow>[
                          Shadow(
                              blurRadius: 18.0,
                              color: Colors.black87,
                              offset: Offset.fromDirection(120, 12))
                        ]),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
