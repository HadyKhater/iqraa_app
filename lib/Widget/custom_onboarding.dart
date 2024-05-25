import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_button.dart';
import 'package:iqraa_app/const/const.dart';

class CustomOnboarding extends StatelessWidget {
  const CustomOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
            child: SvgPicture.asset(
              'asstes/images/Frame.svg',
              width: 368.0.w,
              height: 394.0.h,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomText(
                title: 'كون مكتبتك الخاصة',
                fontSize: 32.0.sp,
                fontWeight: FontWeight.w700,
                colorText: Colors.black),
          ),
          SizedBox(
            height: 76.0.h,
          ),
          const CustomButton(title: 'التالي')
        ],
      ),
    );
  }
}
