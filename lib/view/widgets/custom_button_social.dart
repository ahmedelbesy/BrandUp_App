import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButtonSocial extends StatelessWidget {
  final String text;
  final String imageName;
  final Function onPress;

  CustomButtonSocial({this.text, this.imageName,this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade50,
      ),
      // ignore: deprecated_member_use
      child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          onPressed: onPress,
          child: Row(
            children: [
              Image.asset(imageName,height: 40,width: 30,),
              SizedBox(
                width: 90,
              ),
              CustomText(
                text: text,
              )
            ],
          )),
    );
  }
}
