import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_rate_defult.dart';
import 'package:iqraa_app/const/const.dart';

class CustomCommentsAboutTheAuthor extends StatelessWidget {
  const CustomCommentsAboutTheAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'asstes/images/Rectangle.png',
              width: 100.0.w,
              height: 140.0.h,
            ),
            SizedBox(width: 8.0.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      title: 'محمد على',
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w700,
                      colorText: kSecondColor),
                  SizedBox(
                    height: 4.0.h,
                  ),
                  CustomText(
                      title:
                          'كياسي أرشيتيكتو بيتاي فيتاي ديكاتا سيونت أكسبليكابو. نيمو أنيم أبسام فوليوباتاتيم كيواي',
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w400,
                      colorText: kSecondColor),
                ],
              ),
            ),
            const CustomRateDefult(),
          ],
        ),
      ],
    );
  }
}
