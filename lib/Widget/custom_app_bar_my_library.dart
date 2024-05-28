import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomAppBarMyLibrary extends StatelessWidget {
  const CustomAppBarMyLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          // SizedBox(
          //   width: 16.0.w,
          // ),
          CustomText(
              title: 'مكتبتى',
              fontSize: 24.0.sp,
              fontWeight: FontWeight.w700,
              colorText: kSecondColor),
          SizedBox(
            width: 100.0.w,
          ),
          SvgPicture.asset('asstes/icons/search.svg'),
          SizedBox(
            width: 20.0.w,
          ),
          SvgPicture.asset('asstes/icons/More Circle1.svg'),
        ],
      ),
    );
  }
}
