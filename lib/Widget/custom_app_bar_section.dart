import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomAppBarSection extends StatelessWidget {
  const CustomAppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
          title: 'الاقسام',
          fontSize: 24.0.sp,
          fontWeight: FontWeight.w700,
          colorText: kSecondColor),
    );
  }
}
