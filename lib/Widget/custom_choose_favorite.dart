import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

import 'custom_Text.dart';

class CustomChooseFavorite extends StatefulWidget {
  const CustomChooseFavorite({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  State<CustomChooseFavorite> createState() => _CustomChooseFavoriteState();
}

class _CustomChooseFavoriteState extends State<CustomChooseFavorite> {
  bool isSelected = false;
  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        toggleSelection();
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      child: Container(
        width: 98.0.w,
        height: 120.0.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0.r),
          border: isSelected
              ? Border.all(color: kPrimaryColor)
              : Border.all(color: Colors.white),
          color: isSelected ? Colors.white : Colors.transparent,
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'asstes/icons/imaginary.svg',
                    width: 30.0.w,
                    height: 30.0.h,
                  ),
                  SizedBox(
                    height: 16.0.h,
                  ),
                  CustomText(
                      title: 'خيالي',
                      fontSize: 14.0.sp,
                      fontWeight: FontWeight.w600,
                      colorText: Colors.black)
                ],
              ),
            ),
            if (isSelected)
              const Positioned(
                top: 5,
                left: 10,
                child: Icon(
                  Icons.radio_button_checked,
                  color: kPrimaryColor,
                  size: 20.0,
                ),
              )
          ],
        ),
      ),
    );
  }
}
