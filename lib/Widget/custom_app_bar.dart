import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';
import 'custom_Text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        CustomText(
          title: 'المرجعيات',
          fontSize: 24.0.sp,
          fontWeight: FontWeight.w700,
          colorText: kSecondColor,
        ),
        const Spacer(),
        SvgPicture.asset('asstes/icons/More Circle1.svg'),
      ],
    );
  }
}
