import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: CustomText(
                  title: 'إنشاء حساب',
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kPrimaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
