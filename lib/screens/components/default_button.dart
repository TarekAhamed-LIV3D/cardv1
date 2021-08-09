import 'package:flutter/material.dart';
import 'package:cardv1/size_config.dart';
import 'package:cardv1/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: kOrangeColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(fontSize: getProportionateScreenWidth(18),
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
