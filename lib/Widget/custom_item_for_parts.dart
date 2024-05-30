import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomItemForParts extends StatelessWidget {
  const CustomItemForParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
          children: [
            CustomText(
                title: '01',
                fontSize: 18.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kPrimaryColor),
            SizedBox(
              width: 16.0.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                    title: 'الفصل الأول',
                    fontSize: 18.0.sp,
                    fontWeight: FontWeight.w700,
                    colorText: kSecondColor),
                CustomText(
                    title: '34 صفحه',
                    fontSize: 14.0.sp,
                    fontWeight: FontWeight.w500,
                    colorText: kSecondColor),
              ],
            ),
            Spacer(),
            SvgPicture.asset('asstes/icons/Show1.svg'),
          ],
        );
  }
}