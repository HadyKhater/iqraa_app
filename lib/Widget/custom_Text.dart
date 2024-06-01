import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.title,
      required this.fontSize,
      required this.fontWeight,
      required this.colorText,
      this.textAlign,
      this.maxLines,
      this.textOverflow});
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color colorText;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? textOverflow;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Text(
        textAlign: textAlign,
        title,
        maxLines: maxLines,
        overflow: textOverflow,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: colorText,
        ),
      ),
    );
  }
}
