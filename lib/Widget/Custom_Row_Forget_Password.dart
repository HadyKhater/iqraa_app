import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomRowForgetPassword extends StatelessWidget {
  const CustomRowForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          CustomText(
              title: 'تذكرنى',
              fontSize: 14.0.sp,
              fontWeight: FontWeight.w600,
              colorText: kSecondColor),
          SizedBox(
            width: 12.0.w,
          ),
          Container(
            width: 24.0.w,
            height: 24.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0.r),
              border: Border.all(
                  color: kPrimaryColor,
                  strokeAlign: BorderSide.strokeAlignCenter),
            ),
          ),
          Spacer(),
          CustomText(
              title: 'نسيت كلمه المرور؟',
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w600,
              colorText: kPrimaryColor)
        ],
      ),
    );
  }
}