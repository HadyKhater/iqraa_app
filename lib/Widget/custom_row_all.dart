import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class RowAll extends StatelessWidget {
  const RowAll({super.key, required this.title, required this.all, this.onTap, this.fontSize});
  final String title, all;
  final void Function()? onTap;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(
            title: title,
            fontSize:fontSize ??20.0.sp,
            fontWeight: FontWeight.w700,
            colorText: kSecondColor),
        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: CustomText(
              title: all,
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w700,
              colorText: kPrimaryColor),
        )
      ],
    );
  }
}