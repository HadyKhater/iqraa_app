import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';
import 'custom_contaner_my_diary.dart';

class CustomDetails extends StatelessWidget {
  const CustomDetails({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
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
                    const CustomContanerMyDiary(),
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
      ),
    );
  }
}
