import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';
import 'custom_button.dart';

class CustomLogOutShowBottomSheet extends StatelessWidget {
  const CustomLogOutShowBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          title: 'تسجيل الخروج',
          fontSize: 24.0.sp,
          fontWeight: FontWeight.w700,
          colorText: const Color(0xffF75555),
        ),
        SizedBox(
          height: 24.0.h,
        ),
        Divider(
          height: 1,
          indent: 20.0.w,
          endIndent: 5.0.w,
          thickness: 0.2,
        ),
        SizedBox(
          height: 24.0.h,
        ),
        CustomText(
          title: 'هل تريد تسجيل الخروج',
          fontSize: 20.0.sp,
          fontWeight: FontWeight.w700,
          colorText: kSecondColor,
        ),
        SizedBox(
          height: 50.0.h,
        ),
        Row(
          children: [
            CustomButton(
              title: 'الغاء',
              width: 140.0.w,
              height: 58.0.h,
              color: Colors.white,
              textcolor: kPrimaryColor,
            ),
            CustomButton(
              title: 'نعم (اخرج)',
              width: 140.0.w,
              height: 58.0.h,
            ),
          ],
        )
      ],
    );
  }
}
