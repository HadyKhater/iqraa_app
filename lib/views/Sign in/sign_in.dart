import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/appbar_sign_in.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarSingIn(),
          SizedBox(
            height: 28.0.h,
          ),
          CustomText(
              title: 'اختر جنسك',
              fontSize: 18.0.sp,
              fontWeight: FontWeight.w700,
              colorText: Colors.black),
          SizedBox(
            height: 10.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('asstes/images/Avatar femail.svg'),
              SizedBox(
                width: 8.0.w,
              ),
              SvgPicture.asset('asstes/images/Avatar mail.svg')
            ],
          )
        ],
      ),
    );
  }
}
