import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';
import 'package:cardv1/screens/splashscreen/splash_screen.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CardV1',
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: kTextColor, fontFamily: "Poppins"),
        primarySwatch: Colors.orange,
        primaryColor: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      //home: HomeScreen(),
    );
  }
}