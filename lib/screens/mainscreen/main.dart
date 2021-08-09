import 'package:flutter/material.dart';
import 'package:cardv1/constants.dart';
import 'package:cardv1/screens/onboardingscreen/onboard_screen.dart';

class HomeScreen extends StatelessWidget{
  Widget build(BuildContext context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Card V1",
      theme: ThemeData(
        scaffoldBackgroundColor: kWhiteColor,
        fontFamily: "Arial",
        textTheme: TextTheme(
            bodyText1: TextStyle(color: kTextColor),
            bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnboardScreen(),
    );
  }
}