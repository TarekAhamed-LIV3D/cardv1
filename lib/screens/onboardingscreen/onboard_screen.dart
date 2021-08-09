import 'package:cardv1/size_config.dart';
import 'package:flutter/material.dart';
import 'package:cardv1/screens/onboardingscreen/components/body.dart';


class OnboardScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}