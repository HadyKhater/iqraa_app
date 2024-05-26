import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.title, this.onTap});
  final String title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 380.0.w,
          height: 58.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0.r),
            color: kPrimaryColor,
          ),
          child: Align(
            alignment: Alignment.center,
            child: CustomText(
                title: title,
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w700,
                colorText: Colors.white),
          ),
        ),
      ),
    );
  }
}
