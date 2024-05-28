import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomCardDiscount extends StatelessWidget {
  const CustomCardDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.0.w,
      height: 181.0.h,
      decoration: BoxDecoration(
        gradient:const LinearGradient(
            colors: [Colors.white, kPrimaryColor],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomCenter),
        borderRadius: BorderRadius.circular(32.r),
        color: kPrimaryColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                title: 'لفتره محدودة',
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w600,
                colorText: Colors.white),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              children: [
                CustomText(
                    title: 'خصم خاص',
                    fontSize: 24.0.sp,
                    fontWeight: FontWeight.w700,
                    colorText: Colors.white),
                SizedBox(
                  width: 30.0.w,
                ),
                CustomText(
                    title: '50%',
                    fontSize: 48.0.sp,
                    fontWeight: FontWeight.w700,
                    colorText: Colors.white),
              ],
            ),
           const SizedBox(
              height: 16.5,
            ),
            CustomText(
                title: 'احصل على خصم على اشتراكك الشهري او السنوي لفتره محدودة',
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w600,
                colorText: Colors.white),
            SizedBox(
              height: 15.0.h,
            ),
          ],
        ),
      ),
    );
  }
}
