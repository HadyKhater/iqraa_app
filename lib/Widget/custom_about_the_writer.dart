import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomAboutTheWriter extends StatelessWidget {
  const CustomAboutTheWriter({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  title: 'السيرة الذاتية',
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kSecondColor),
              CustomText(
                title:
                    'الأديب المصري الكبير الذي يُعتبر من رواد الفكر في المجتمع خلال القرن العشري، وواحد من رموز الأدب العربي للدرجة التي صار فيها عميدها .  ولد طه في الرابع و العشرين من شهر نوفمبر في عام 1889, سابع أولاد أبيه حسين الثلاثة عشر. ولدا في قرية الكيلو قريبا من مغاغة إحدى مدن محافظ. المزيد...',
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w400,
                colorText: const Color(0xff424242),
              ),
              SizedBox(
                height: 24.0.h,
              ),
              CustomText(
                  title: 'الموطن',
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kSecondColor),
              SizedBox(
                height: 12.0.h,
              ),
              CustomText(
                  title: 'مصر',
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400,
                  colorText: kSecondColor),
              SizedBox(
                height: 24.0.h,
              ),
              CustomText(
                  title: 'تاريخ الميلاد',
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kSecondColor),
              SizedBox(
                height: 12.0.h,
              ),
              CustomText(
                  title: '24 نوفمبر 1889',
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400,
                  colorText: kSecondColor),
              SizedBox(
                height: 24.0.h,
              ),
              CustomText(
                  title: 'تاريخ الوفاة',
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kSecondColor),
              SizedBox(
                height: 12.0.h,
              ),
              CustomText(
                  title: '28 اكتوبر 1973',
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400,
                  colorText: kSecondColor),
              SizedBox(
                height: 20.0.h,
              ),
            ],
          ),
        );
  }
}