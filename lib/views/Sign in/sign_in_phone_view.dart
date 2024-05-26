import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/Custom_Row_Forget_Password.dart';
import 'package:iqraa_app/Widget/Custom_Row_Icon_Facbook_And_Google.dart';
import 'package:iqraa_app/Widget/Navigate_Mobil_And_Email.dart';
import 'package:iqraa_app/Widget/create_account.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_button.dart';
import 'package:iqraa_app/Widget/custom_text_form_filed.dart';
import 'package:iqraa_app/const/const.dart';

class SignInPhoneView extends StatelessWidget {
  const SignInPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                  title: 'أهلاً بك',
                  fontSize: 48.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kPrimaryColor),
              CustomText(
                  title:
                      'سجل الدخول لمكتبتك واكتشف ......................................',
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400,
                  colorText: const Color(0xff424242)),
              SizedBox(
                height: 45.15.h,
              ),
              const NavigateMobilAndEmail(),
              SizedBox(
                height: 32.0.h,
              ),
              const CustomTextFormFiled(
                type: TextInputType.emailAddress,
                maxlines: 1,
                hint: 'البريد المسجل به',
                iconDataPrefx: Icons.email,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              const CustomTextFormFiled(
                type: TextInputType.visiblePassword,
                maxlines: 1,
                hint: 'كلمه المرور الخاصة',
                iconDataPrefx: Icons.lock,
              ),
              SizedBox(
                height: 22.0.h,
              ),
              const CustomRowForgetPassword(),
              SizedBox(
                height: 20.0.h,
              ),
              CustomButton(onTap: () {}, title: 'سجل الدخول'),
              SizedBox(
                height: 45.15.h,
              ),
              Center(
                child: CustomText(
                    title: 'أو باستخدام',
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.w600,
                    colorText: kSecondColor),
              ),
              SizedBox(
                height: 20.0.h,
              ),
              const CustomRowIconFacbookAndGoogle(),
              SizedBox(
                height: 45.15.h,
              ),
              const CreateAccount(),
              SizedBox(
                height: 48.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}