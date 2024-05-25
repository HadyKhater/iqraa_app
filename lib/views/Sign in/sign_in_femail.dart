import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/appbar_sign_in.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_button.dart';
import 'package:iqraa_app/Widget/numbered_wheel_slider.dart';

import 'sign_in_mail.dart';

class SignInFemailView extends StatelessWidget {
  const SignInFemailView({super.key});

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
            height: 24.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('asstes/images/Avatar femail.svg'),
              SizedBox(
                width: 44.0.w,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInMailView()));
                  },
                  child: SvgPicture.asset('asstes/images/Avatar mail.svg'))
            ],
          ),
          SizedBox(
            height: 38.0.h,
          ),
          CustomText(
              title: 'كم عمرك',
              fontSize: 18.0.sp,
              fontWeight: FontWeight.w600,
              colorText: Colors.black),
          SizedBox(
            height: 28.0.h,
          ),
          NumberedWheelSlider(
            minValue: 0,
            maxValue: 100,
            initialValue: 24,
            onChanged: (value) {
              print('Selected Value: $value');
            },
          ),
          SizedBox(
            height: 36.0.h,
          ),
          const CustomButton(title: 'التالي')
        ],
      ),
    );
  }
}


// Numbered wheel silider