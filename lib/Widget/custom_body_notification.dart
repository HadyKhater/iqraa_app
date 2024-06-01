import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomBodyNotification extends StatelessWidget {
  const CustomBodyNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            title: 'اليوم',
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w700,
            colorText: kSecondColor),
        SizedBox(
          height: 24.0.h,
        ),
        Container(
          padding: EdgeInsets.only(right: 16.0.w),
          width: 380.0.w,
          height: 95.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0.r),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Stack(
                children: [
                  SvgPicture.asset('asstes/icons/Rectangle 34624834.svg'),
                  Positioned(
                    top: 18,
                    bottom: 18,
                    right: 18,
                    left: 18,
                    child: SvgPicture.asset('asstes/icons/Icon.svg'),
                  ),
                ],
              ),
              SizedBox(
                width: 20.0.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      title: 'كتب جديدة',
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.w700,
                      colorText: kSecondColor),
                  CustomText(
                      title: 'تم إضافة 4 كتب لازم تشفها',
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w500,
                      colorText: const Color(0xff616161)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
