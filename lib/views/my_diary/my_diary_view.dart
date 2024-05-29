import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_my_diary.dart';
import 'package:iqraa_app/const/const.dart';

class MyDiary extends StatelessWidget {
  const MyDiary({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            surfaceTintColor: Colors.white,
            title: CustomText(
                title: 'مذكرات',
                fontSize: 24.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kSecondColor),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 4.3,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 44.0,
                ),
                itemBuilder: (context, index) => const CustomMyDiary()),
          )),
    );
  }
}
