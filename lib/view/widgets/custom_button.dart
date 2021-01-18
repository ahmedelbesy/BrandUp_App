
import 'package:flutter/material.dart';

import '../../constance.dart';
import 'custom_text.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  CustomButton({this.text,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(18),
        onPressed: onPressed,
        color: primaryColor,
        child: CustomText(
          text:text,
          alignment: Alignment.center,
          color: Colors.white,
        ));
  }
}
