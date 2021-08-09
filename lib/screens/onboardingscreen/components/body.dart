import 'package:cardv1/generated/assets.dart';
import 'package:cardv1/size_config.dart';
import 'package:flutter/material.dart';
import 'package:cardv1/constants.dart';
import 'package:lottie/lottie.dart';
import '../components/board_content.dart';
import '../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> boardData = [
    {
      "text": "Welcome to CARDv1, let's make some changes!",
      "image": "assets/lottie/splash_screen001.json"
    },
    {
      "text": "Welcome to CARDv1, let's make some changes!",
      "image": "assets/lottie/splash_screen003.json"
    },
    {
      "text": "Welcome to CARDv1, let's make some changes!",
      "image": "assets/lottie/splash_screen004.json"
    },
    {
      "text": "Welcome to CARDv1, let's make some changes!",
      "image": "assets/lottie/splash_screen005.json"
    },
  ];
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value){
                    setState(() {
                      currentPage = value;
                    });
                  },
                    itemCount: boardData.length,
                    itemBuilder: (context, index) => BoardContent(
                      image: boardData[index]["image"],
                      text: boardData[index]["text"],
                    ),
                ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        boardData.length,
                            (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: "Continue",
                      press: () {},
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}){
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
    margin: EdgeInsets.only(right: 5),
    height: 6,
    width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kOrangeColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}