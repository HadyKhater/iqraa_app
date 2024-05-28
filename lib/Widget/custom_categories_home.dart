import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class CustomCategoriesHome extends StatefulWidget {
  const CustomCategoriesHome({super.key});

  @override
  State<CustomCategoriesHome> createState() => _CustomCategoriesHomeState();
}

class _CustomCategoriesHomeState extends State<CustomCategoriesHome> {
  bool isSelected = false;
  void changeSelected() {
    isSelected = !isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              changeSelected();
            });
          },
          child: Container(
            width: 95.0.w,
            height: 38.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: isSelected ? kPrimaryColor : Colors.white,
              border: Border.all(
                color: kPrimaryColor,
              ),
            ),
            child: Align(
              alignment: Alignment.center,
              child: CustomText(
                  title: 'الكل',
                  fontSize: 16.0.sp,
                  fontWeight: FontWeight.w600,
                  colorText: isSelected ? Colors.white : kPrimaryColor),
            ),
          ),
        ),
      ],
    );
  }
}
