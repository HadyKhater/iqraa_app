import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomAppBarProfile extends StatelessWidget {
  const CustomAppBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'asstes/images/Logo.svg',
          width: 29.0.w,
          height: 41.0.h,
        ),
        SizedBox(
          width: 16.0.w,
        ),
        CustomText(
            title: 'حسابى',
            fontSize: 24.0.sp,
            fontWeight: FontWeight.w700,
            colorText: kSecondColor),
        Spacer(),
        SvgPicture.asset('asstes/icons/More Circle1.svg')
      ],
    );
  }
}
