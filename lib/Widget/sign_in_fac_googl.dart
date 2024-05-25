import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class SignInFacAndGoogle extends StatelessWidget {
  const SignInFacAndGoogle(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.0.w,
      height: 60.0.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.only(right: 20.0.w),
          child: Row(
            children: [
              SvgPicture.asset(image),
              SizedBox(
                width: 12.0.w,
              ),
              CustomText(
                  title: text,
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w600,
                  colorText: kSecondColor),
            ],
          ),
        ),
      ),
    );
  }
}
