import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
                textDirection: TextDirection.rtl,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      title: 'لا تمتلك حساب!',
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w400,
                      colorText: const Color(0xff9E9E9E),
                    ),
                    SizedBox(
                      width: 8.0.w,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: CustomText(
                        title: 'انشأ حساب',
                        fontSize: 14.0.sp,
                        fontWeight: FontWeight.w600,
                        colorText: kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      height: 48.0.h,
                    ),
                  ],
                ),
              );
  }
}