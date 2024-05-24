import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';
import 'package:iqraa_app/views/splash/splash_view.dart';

import 'custom_Text.dart';

class CustomChooseCountry extends StatelessWidget {
  const CustomChooseCountry({
    Key? key,
    required this.text,
    required this.image,
    required this.value,
    required this.isSelected,
    required this.onChanged,
  }) : super(key: key);

  final String text;
  final String image;
  final int value;
  final bool isSelected;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380.0.w,
      height: 76.0.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0.r),
        color: Colors.white,
      ),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Radio<int>(
                activeColor: kPrimaryColor,
                value: value,
                groupValue: isSelected ? value : null,
                onChanged: (_) => onChanged(),
              ),
              CustomText(
                title: text,
                fontSize: 18.0.sp,
                fontWeight: FontWeight.w700,
                colorText: Colors.black,
              ),
              const Spacer(),
              SvgPicture.asset(image),
            ],
          ),
        ),
      ),
    );
  }
}
