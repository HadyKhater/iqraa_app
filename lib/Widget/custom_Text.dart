import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.title,
      required this.fontSize,
      required this.fontWeight,
      required this.colorText,
      this.textAlign});
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color colorText;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Text(
        textAlign: textAlign,
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: colorText,
        ),
      ),
    );
  }
}
