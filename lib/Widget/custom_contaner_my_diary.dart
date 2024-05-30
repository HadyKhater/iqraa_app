import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class CustomContanerMyDiary extends StatelessWidget {
  const CustomContanerMyDiary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 57.0.w,
                height: 24.0.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0.r),
                  color: const Color(0xffD3D7E3),
                ),
                child: Center(
                  child: CustomText(
                      title: 'مذكرات',
                      fontSize: 10.0.sp,
                      fontWeight: FontWeight.w600,
                      colorText: kPrimaryColor),
                ),
              );
  }
}