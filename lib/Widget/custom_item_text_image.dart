import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class CustomItemTextAndImag extends StatelessWidget {
  const CustomItemTextAndImag({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Image.asset('asstes/images/Ellipse.png'),
                  SizedBox(
                    width: 20.0.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                          title: 'طه حسين',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w600,
                          colorText: kSecondColor),
                      CustomText(
                          title: ' عميد الادب العربى',
                          fontSize: 14.0.sp,
                          fontWeight: FontWeight.w500,
                          colorText: Color(0xff616161))
                    ],
                  )
                ],
              );
  }
}