import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.title, required this.fontSize, required this.fontWeight, required this.colorText});
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: colorText,
      ),
    );
  }
}