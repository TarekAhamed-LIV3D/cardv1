import 'package:flutter/material.dart';
import 'package:cardv1/constants.dart';
import 'package:lottie/lottie.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20.0),
            children: [
              Center(
                child: Lottie.asset("assets/lottie/splash_screen002.json",
                    repeat: true),
              ),
            ],
          ),
        ));
  }
}