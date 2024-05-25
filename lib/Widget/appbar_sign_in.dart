import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class AppBarSingIn extends StatelessWidget {
 const AppBarSingIn({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: 160.0.w,
                height: 8.0.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120.0.r),
                    color: const Color(0xffF5F5F5)),
              ),
              Container(
                width: 80.0.w,
                height: 8.0.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120.0.r),
                    color: kPrimaryColor),
              ),
            ],
          ),
          SizedBox(
            width: 9.0.w,
          ),
          CustomText(
              title: '1/2',
              fontSize: 12.0.sp,
              fontWeight: FontWeight.w700,
              colorText: kPrimaryColor)
        ],
      ),
    );
  }
}
