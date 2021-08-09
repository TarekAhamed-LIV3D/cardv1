import 'package:cardv1/constants.dart';
import 'package:cardv1/screens/splashscreen/compo/main.dart';
import 'package:cardv1/screens/mainscreen/main.dart';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOrangeColor,
      body: Body(),
    );
  }
}