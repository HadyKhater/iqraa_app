import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_my_diary.dart';
import 'package:iqraa_app/const/const.dart';
import 'package:iqraa_app/views/details_view/details_view.dart';

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
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsView()));
              },
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 4.3,
                    crossAxisSpacing: 28.5,
                    mainAxisSpacing: 44.0,
                  ),
                  itemBuilder: (context, index) => const CustomMyDiary()),
            ),
          )),
    );
  }
}
