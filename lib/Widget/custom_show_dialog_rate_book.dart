import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';
import 'custom_Text.dart';
import 'custom_text_form_filed.dart';

class CustomShowDialogRateBook extends StatelessWidget {
  const CustomShowDialogRateBook({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomText(
            textAlign: TextAlign.center,
            title: 'قيم الكتاب',
            fontSize: 24.0.sp,
            fontWeight: FontWeight.w700,
            colorText: kPrimaryColor,
          ),
          SizedBox(height: 26.0.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (index) {
              return SvgPicture.asset('asstes/icons/star_gray.svg');
            }),
          ),
          SizedBox(height: 26.0.h),
          const CustomTextFormFiled(
            hint: 'تعليقي',
            maxlines: 3,
          ),
        ],
      ),
      actions: [
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              minimumSize: const Size(263, 58),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: CustomText(
              title: 'قيم الان',
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w700,
              colorText: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}