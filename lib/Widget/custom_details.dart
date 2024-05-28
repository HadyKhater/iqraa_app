import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomDetails extends StatelessWidget {
  const CustomDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'asstes/images/Rectangle.png',
          width: 100.0.w,
          height: 140.0.h,
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 57.0.w,
                    height: 24.0.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0.r),
                      color: Color(0xffD3D7E3),
                    ),
                    child: Center(
                      child: CustomText(
                          title: 'مذكرات',
                          fontSize: 10.0.sp,
                          fontWeight: FontWeight.w600,
                          colorText: kPrimaryColor),
                    ),
                  ),
                  SizedBox(
                    width: 100.0.w,
                  ),
                  SvgPicture.asset('asstes/icons/Bookprimarycolor.svg')
                ],
              ),
              SizedBox(
                height: 12.0.h,
              ),
              CustomText(
                  title: 'الأيام',
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kSecondColor),
              SizedBox(
                height: 12.0.h,
              ),
              CustomText(
                  title: 'طه حسين',
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kPrimaryColor),
              SizedBox(
                height: 12.0.h,
              ),
              Row(
                children: [
                  SvgPicture.asset('asstes/icons/Fill 1.svg'),
                  SizedBox(
                    width: 8.0.w,
                  ),
                  CustomText(
                    title: '9.5',
                    fontSize: 12.0.sp,
                    fontWeight: FontWeight.w500,
                    colorText: Color(0xff616161),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
