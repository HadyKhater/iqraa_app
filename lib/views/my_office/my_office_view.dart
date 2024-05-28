import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_app_bar_my_library.dart';
import 'package:iqraa_app/Widget/custom_categories_home.dart';
import 'package:iqraa_app/Widget/custom_details.dart';

class MyOfficeView extends StatelessWidget {
  const MyOfficeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: Column(
          children: [
            SizedBox(
              height: 35.0.h,
            ),
            //custom App Bar
            const CustomAppBarMyLibrary(),
            SizedBox(
              height: 24.0.h,
            ),
            SizedBox(
              height: 50.0.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const CustomCategoriesItem(
                        text: 'روايات',
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10.0.w,
                      ),
                  itemCount: 5),
            ),
            Expanded(
              child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const CustomDetails(),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 24.0.h,
                      ),
                  itemCount: 5),
            )
          ],
        ),
      ),
    );
  }
}
