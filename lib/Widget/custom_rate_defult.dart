import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomRateDefult extends StatelessWidget {
  const CustomRateDefult({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 66.0.w,
      height: 38.0.h,
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(100.0.r),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
              title: '5 ',
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w600,
              colorText: kPrimaryColor),
          SizedBox(
            width: 8.0.w,
          ),
          SvgPicture.asset('asstes/icons/starKprim.svg')
        ],
      ),
    );
  }
}
