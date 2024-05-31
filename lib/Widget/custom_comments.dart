import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';
import 'custom_rate_defult.dart';
import 'custom_rate_item.dart';
import 'custom_rate_item_list.dart';

class CustomComments extends StatelessWidget {
  const CustomComments({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomRateItemList(),
        SizedBox(
          height: 24.0.h,
        ),
        Row(
          children: [
            Image.asset(
              'asstes/images/Ellipse (1).png',
            ),
            SizedBox(
              width: 16.0.w,
            ),
            CustomText(
                title: 'محمد على',
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kSecondColor),
            const Spacer(),
            const CustomRateDefult(),
          ],
        ),
        SizedBox(
          height: 12.0.h,
        ),
        CustomText(
            title:
                'كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو\n. نيمو أنيم أبسام فوليوباتاتيم كيواي',
            fontSize: 14.0.sp,
            fontWeight: FontWeight.w400,
            colorText: kSecondColor),
        Align(
          alignment: Alignment.centerLeft,
          child: CustomText(
            title: 'منذ 2 اسبوع',
            fontSize: 12.0.sp,
            fontWeight: FontWeight.w500,
            colorText: const Color(0xff616161),
          ),
        ),
        SizedBox(
          height: 24.0.h,
        ),
        Row(
          children: [
            Image.asset(
              'asstes/images/Ellipse (1).png',
            ),
            SizedBox(
              width: 16.0.w,
            ),
            CustomText(
                title: 'محمد على',
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kSecondColor),
            const Spacer(),
            const CustomRateDefult(),
          ],
        ),
        SizedBox(
          height: 20.0.h,
        ),
      ],
    );
  }
}
