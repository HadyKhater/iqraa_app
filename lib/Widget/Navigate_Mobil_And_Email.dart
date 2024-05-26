import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class NavigateMobilAndEmail extends StatefulWidget {
  const NavigateMobilAndEmail({
    super.key,
  });

  @override
  State<NavigateMobilAndEmail> createState() => _NavigateMobilAndEmailState();
}

class _NavigateMobilAndEmailState extends State<NavigateMobilAndEmail> {
  bool isEmailSelected = true;
  bool isTextFormSelected = true;
  void toggleSelection() {
    setState(() {
      isEmailSelected = !isEmailSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 327.0.w,
        height: 56.0.h,
        decoration: BoxDecoration(
          // border: Border.all(color: const Color(0xffFAFAFA)),
          borderRadius: BorderRadius.circular(8.0.r),
          color: Color(0xffFAFAFA),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                if (!isEmailSelected) toggleSelection();
              },
              child: Container(
                width: 152.0.w,
                height: 48.0.h,
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(16.0.r),
                  color: isEmailSelected ? Colors.white : Colors.transparent,
                ),
                child: Center(
                  child: CustomText(
                    title: 'البريد الالكترونى',
                    fontSize: 16.0.sp,
                    fontWeight:
                        isEmailSelected ? FontWeight.w600 : FontWeight.w400,
                    colorText: isEmailSelected
                        ? kSecondColor
                        : const Color(0xff9E9E9E),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16.0.w,
            ),
            GestureDetector(
              onTap: () {
                if (isEmailSelected) toggleSelection();
                if (isTextFormSelected) toggleSelection();
              },
              child: Container(
                width: 152.0.w,
                height: 48.0.h,
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16.0.r),
                    color: isEmailSelected ? Colors.transparent : Colors.white),
                child: Center(
                  child: CustomText(
                    title: 'رقم المحمول',
                    fontSize: 16.0.sp,
                    fontWeight:
                        isEmailSelected ? FontWeight.w400 : FontWeight.w600,
                    colorText: isEmailSelected
                        ? Colors.grey.withOpacity(0.5)
                        : kSecondColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
