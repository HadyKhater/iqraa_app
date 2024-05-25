import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/appbar_sign_in.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_button.dart';
import 'package:iqraa_app/Widget/numbered_wheel_slider.dart';

import 'choose_favorites.dart';

class SignInMailView extends StatelessWidget {
  const SignInMailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarSingIn(
            text: '1/2',
            width: 80.0.w,
          ),
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
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                      'asstes/images/Female Deactivate 1.svg')),
              SizedBox(
                width: 44.0.w,
              ),
              SvgPicture.asset('asstes/images/Male Activate 1.svg')
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
          CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChooseFavorites()));
              },
              title: 'التالي')
        ],
      ),
    );
  }
}


// Numbered wheel silider