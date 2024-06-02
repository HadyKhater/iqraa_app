import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_rate_item.dart';
import 'package:iqraa_app/const/const.dart';
import 'custom_button.dart';
import 'custom_categories_home.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 462.0.h,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: 428.0.w,
          height: 462.0.h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35.0.h,
                ),
                Center(
                  child: CustomText(
                      title: 'بحث',
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.w700,
                      colorText: kSecondColor),
                ),
                SizedBox(
                  height: 20.0.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: CustomText(
                      title: 'التصنيفات',
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.w700,
                      colorText: kSecondColor),
                ),
                SizedBox(
                  height: 24.0.h,
                ),
                SizedBox(
                  height: 50.0.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            const CustomCategoriesItem(
                              text: 'الكل',
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10.0.w,
                            ),
                        itemCount: 5),
                  ),
                ),
                SizedBox(
                  height: 24.0.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                  child: CustomText(
                      title: 'تقييم',
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.w700,
                      colorText: kSecondColor),
                ),
                SizedBox(
                  height: 24.0.h,
                ),
                SizedBox(
                  height: 50.0.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => const CustomRateItem(),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 10.0.w,
                            ),
                        itemCount: 5),
                  ),
                ),
                SizedBox(
                  height: 15.0.h,
                ),
                CustomButton(
                  title: 'بحث',
                  onTap: onTap,
                ),
                SizedBox(
                  height: 15.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
