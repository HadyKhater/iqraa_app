import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomAllBookAppBar extends StatelessWidget {
  const CustomAllBookAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child:const Icon(Icons.arrow_back)),
        SizedBox(
          width: 16.0.w,
        ),
        CustomText(
            title: 'الكتاب',
            fontSize: 24.0.sp,
            fontWeight: FontWeight.w700,
            colorText: kSecondColor),
        const Spacer(),
        SvgPicture.asset(
          'asstes/icons/search.svg',
        ),
      ],
    );
  }
}
