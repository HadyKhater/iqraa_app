import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomRowIconFacbookAndGoogle extends StatelessWidget {
  const CustomRowIconFacbookAndGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 87.04.w,
            height: 60.0.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(16.0.r),
            ),
            child: SvgPicture.asset(
              'asstes/icons/Google.svg',
              width: 23.04.w,
              height: 24.0.h,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(
            width: 50.0.h,
          ),
          Container(
            width: 87.0.w,
            height: 60.0.h,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(16.0.r),
            ),
            child: SvgPicture.asset(
              'asstes/icons/Facbook.svg',
              width: 23.04.w,
              height: 24.0.h,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
    );
  }
}