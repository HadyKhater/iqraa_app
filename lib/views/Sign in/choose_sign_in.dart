import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/create_account.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_button.dart';
import 'package:iqraa_app/Widget/sign_in_fac_googl.dart';
import 'package:iqraa_app/const/const.dart';

import 'sign_in_view.dart';

class ChooseSignInView extends StatelessWidget {
  const ChooseSignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: CustomText(
                  title: 'الدخول كزائر',
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kPrimaryColor),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SvgPicture.asset(
              'asstes/images/SignIn.svg',
              width: 380.0.w,
              height: 200.0.h,
            ),
            SizedBox(
              height: 44.75.h,
            ),
            CustomText(
              textAlign: TextAlign.center,
              title: 'التسجيل لبدأ رحله القراءة',
              fontSize: 32.0.sp,
              fontWeight: FontWeight.w700,
              colorText: kSecondColor,
            ),
            SizedBox(
              height: 44.75.h,
            ),
            const SignInFacAndGoogle(
              image: 'asstes/icons/Facbook.svg',
              text: 'التسجيل بحساب الفيسبوك',
            ),
            SizedBox(
              height: 16.0.h,
            ),
            const SignInFacAndGoogle(
              image: 'asstes/icons/Google.svg',
              text: 'التسجيل بحساب جوجل',
            ),
            SizedBox(
              height: 24.0.h,
            ),
            CustomText(
              title: 'او',
              fontSize: 18.0.sp,
              fontWeight: FontWeight.w600,
              colorText: const Color(0xff616161),
            ),
            SizedBox(
              height: 24.0.h,
            ),
            CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInView()));
                },
                title: 'التسجيل بحساب خاص'),
            SizedBox(
              height: 44.0.h,
            ),
            const CreateAccount()
          ],
        ),
      ),
    );
  }
}
