import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  final Alignment alignment;
  final FontWeight fontweight;

  CustomText(
      {this.text = "",
      this.fontSize = 16,
      this.color = Colors.black,
      this.alignment = Alignment.topLeft,
        this.fontweight,
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(fontSize: fontSize, color: color,fontWeight:fontweight ),
      ),
    );
  }
}
