import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';
import 'custom_Text.dart';
import 'custom_contaner_my_diary.dart';

class CustomBodyReferences extends StatelessWidget {
  const CustomBodyReferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset('asstes/images/Image.png'),
        SizedBox(
          width: 9.0.w,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomContanerMyDiary(
                text: 'الأيام',
              ),
              SizedBox(
                height: 12.0.h,
              ),
              CustomText(
                  title:
                      'أكبر الظن أن شقاء الأشقياء، هو الذي أذكى سعادة السعداء',
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kSecondColor),
              SizedBox(
                height: 8.0.h,
              ),
              CustomText(
                  title: 'طه حسين',
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kPrimaryColor),
            ],
          ),
        ),
        SvgPicture.asset('asstes/icons/Bookmark_kprim.svg'),
      ],
    );
  }
}
