import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';

class CustomOnboarding extends StatelessWidget {
  const CustomOnboarding({super.key, required this.title, required this.image});
  final String title;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w),
            child: SvgPicture.asset(
              image,
              width: 349.0.w,
              height: 349.0.h,
            ),
          ),
          CustomText(
            title: title,
            fontSize: 30.0.sp,
            fontWeight: FontWeight.w700,
            colorText: Colors.black,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 76.0.h,
          ),
        ],
      ),
    );
  }
}
