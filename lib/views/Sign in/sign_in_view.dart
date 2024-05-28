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
import 'package:iqraa_app/layout/layout_view.dart';
import 'package:iqraa_app/views/sign_up/sign_up.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool isEmailSelected = true;
  void toggleSelection() {
    setState(() {
      isEmailSelected = !isEmailSelected;
    });
  }

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
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  width: 327.0.w,
                  height: 56.0.h,
                  decoration: BoxDecoration(
                    // border: Border.all(color: const Color(0xffFAFAFA)),
                    borderRadius: BorderRadius.circular(8.0.r),
                    color: Color(0xffFAFAFA),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (!isEmailSelected) toggleSelection();
                        },
                        child: Container(
                          width: 152.0.w,
                          height: 48.0.h,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(16.0.r),
                            color: isEmailSelected
                                ? Colors.white
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: CustomText(
                              title: 'البريد الالكترونى',
                              fontSize: 16.0.sp,
                              fontWeight: isEmailSelected
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              colorText: isEmailSelected
                                  ? kSecondColor
                                  : const Color(0xff9E9E9E),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.0.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          if (isEmailSelected) toggleSelection();
                        },
                        child: Container(
                          width: 152.0.w,
                          height: 48.0.h,
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(16.0.r),
                              color: isEmailSelected
                                  ? Colors.transparent
                                  : Colors.white),
                          child: Center(
                            child: CustomText(
                              title: 'رقم المحمول',
                              fontSize: 16.0.sp,
                              fontWeight: isEmailSelected
                                  ? FontWeight.w400
                                  : FontWeight.w600,
                              colorText: isEmailSelected
                                  ? Colors.grey.withOpacity(0.5)
                                  : kSecondColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (isEmailSelected == true)
                SizedBox(
                  height: 32.0.h,
                ),
              if (isEmailSelected == true)
                const CustomTextFormFiled(
                  type: TextInputType.emailAddress,
                  maxlines: 1,
                  hint: 'البريد المسجل به',
                  iconDataPrefx: Icons.email,
                ),
              if (isEmailSelected == false)
                SizedBox(
                  height: 32.0.h,
                ),
              if (isEmailSelected == false)
                const CustomTextFormFiled(
                  type: TextInputType.emailAddress,
                  maxlines: 1,
                  hint: 'الفون',
                  iconDataPrefx: Icons.phone,
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
              CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LayOutView()));
                  },
                  title: 'سجل الدخول'),
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
              CreateAccount(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpView()));
              }),
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
