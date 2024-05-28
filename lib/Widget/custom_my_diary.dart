import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomMyDiary extends StatelessWidget {
  const CustomMyDiary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset('asstes/images/Image.png'),
            Positioned(
              top: 10.0.h,
              left: 10.0.w,
              child: Container(
                width: 27.54.w,
                height: 31.34.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0.r),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: SvgPicture.asset(
                  'asstes/icons/Vector.svg',
                  width: 17.0.w,
                  height: 13.92.h,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.0.h,
        ),
        Row(
          children: [
            Container(
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
            ),
            SizedBox(
              width: 27.33.w,
            ),
            SvgPicture.asset('asstes/icons/Fill 1kprim.svg'),
            SizedBox(
              width: 8.0.w,
            ),
            CustomText(
              title: '9.5',
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w500,
              colorText: const Color(0xff616161),
            ),
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
      ],
    );
  }
}
