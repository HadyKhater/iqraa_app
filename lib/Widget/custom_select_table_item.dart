import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class SelectableItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final void Function()? onTap;

  const SelectableItem({
    Key? key,
    required this.title,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            title: title,
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w600,
            colorText: isSelected ? kPrimaryColor : const Color(0xff9E9E9E),
          ),
          SizedBox(
            height: 8.0.h,
          ),
          Container(
            width: 100.0.w,
            height: 4.0.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0.r),
              color: isSelected ? kPrimaryColor : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
