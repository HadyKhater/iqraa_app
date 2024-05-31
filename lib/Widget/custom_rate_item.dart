import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomRateItem extends StatefulWidget {
  const CustomRateItem({super.key});

  @override
  State<CustomRateItem> createState() => _CustomRateItemState();
}

class _CustomRateItemState extends State<CustomRateItem> {
  bool isSelected = false;
  void toggel() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggel();
      },
      child: Container(
        width: 66.0.w,
        height: 38.0.h,
        decoration: BoxDecoration(
          border: Border.all(color: kPrimaryColor),
          borderRadius: BorderRadius.circular(100.0.r),
          color: isSelected ? kPrimaryColor : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
                title: '5 ',
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w600,
                colorText: isSelected ? Colors.white : kPrimaryColor),
            SizedBox(
              width: 8.0.w,
            ),
            SvgPicture.asset(isSelected
                ? 'asstes/icons/Stare_white.svg'
                : 'asstes/icons/starKprim.svg')
          ],
        ),
      ),
    );
  }
}

