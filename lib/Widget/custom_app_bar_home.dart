import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'asstes/images/Logo.svg',
          width: 29.0.w,
          height: 41.0.h,
        ),
        SizedBox(
          width: 16.0.w,
        ),
        Container(
          width: 200.0.w,
          height: 44.0.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0.r),
            color: const Color(0xffF5F5F5),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Row(
              children: [
                const Icon(
                  Icons.search_outlined,
                  color: Color(0xffBDBDBD),
                ),
                SizedBox(
                  width: 12.0.w,
                ),
                CustomText(
                  title: 'بحث',
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w400,
                  colorText: const Color(0xffBDBDBD),
                ),
                const Spacer(),
                SvgPicture.asset('asstes/icons/Filter.svg'),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16.0.w,
        ),
        SvgPicture.asset('asstes/icons/Notifiaction.svg'),
        const SizedBox(
          width: 16.0,
        ),
        SvgPicture.asset('asstes/icons/book.svg')
      ],
    );
  }
}
