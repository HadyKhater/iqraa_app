import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_categories_home.dart';
import 'package:iqraa_app/Widget/custom_text_filed_search.dart';
import 'package:iqraa_app/Widget/custom_text_form_filed.dart';
import 'package:iqraa_app/const/const.dart';

class ResearchView extends StatelessWidget {
  const ResearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0.h,
              ),
              CustomTextFiledSearch(
                hintText: 'بحث',
                onChanged: (value) {
                  print('Search query:$value');
                },
              ),
              SizedBox(
                height: 24.0.h,
              ),
              Row(
                children: [
                  CustomCategoriesItem(
                    text: 'كاتب',
                    width: 150.0.w,
                  ),
                  SizedBox(
                    width: 12.0.w,
                  ),
                  CustomCategoriesItem(
                    text: 'كتابي',
                    width: 150.0.w,
                  ),
                ],
              ),
              SizedBox(
                height: 24.0.h,
              ),
              Row(
                children: [
                  CustomText(
                      title: 'نتائج بها',
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.w700,
                      colorText: kSecondColor),
                  SizedBox(
                    width: 5.0.w,
                  ),
                  CustomText(
                      title: '“طه”',
                      fontSize: 20.0.sp,
                      fontWeight: FontWeight.w700,
                      colorText: kPrimaryColor),
                  Spacer(),
                  CustomText(
                      title: '2 كاتب',
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w700,
                      colorText: kPrimaryColor),
                ],
              ),
              SizedBox(
                height: 24.0.h,
              ),
              Row(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
