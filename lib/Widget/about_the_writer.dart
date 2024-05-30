import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';
import 'custom_item_text_image.dart';

class AboutTheWriter extends StatelessWidget {
  const AboutTheWriter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                title: 'عن الكتاب',
                fontSize: 20.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kSecondColor),
            SizedBox(
              height: 10.0.h,
            ),
            CustomText(
              title:
                  'خسائر اللازمة ومطالبة حدة بل. الآخر الحلفاء أن غزو, إجلاء \nوتنامت عدد مع. لقهر معركة لبلجيكا، بـ انه, ربع الأثنان\n المقيتة في, اقتصّت المحور حدة و. هذه ما طرفاً عالمية \nاستسلام, الصين وتنامت حين ٣٠, ونتج والحزب المذابح كل \nجوي. أسر كارثة المشتّتون بل, وبعض وبداية الصفحة غزو\n قد, أي بحث تعداد الجنوب.',
              fontSize: 14.0.sp,
              fontWeight: FontWeight.w400,
              colorText: Color(0xff424242),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            CustomText(
                title: 'الكاتب',
                fontSize: 20.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kSecondColor),
            SizedBox(
              height: 16.0.h,
            ),
            const CustomItemTextAndImag(),
            SizedBox(
              height: 10.0.h,
            ),
          ],
        );
  }
}