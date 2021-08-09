import 'package:flutter/material.dart';
import 'package:cardv1/size_config.dart';
import 'package:cardv1/constants.dart';
import 'package:lottie/lottie.dart';

class BoardContent extends StatelessWidget {
  const BoardContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text("CARDv1",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kOrangeColor,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(flex: 2),
        Lottie.asset(
          image,
          height: getProportionateScreenHeight(285),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}