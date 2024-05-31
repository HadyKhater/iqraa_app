import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_name_author.dart';
import 'package:iqraa_app/const/const.dart';
import 'custom_Text.dart';
import 'custom_bottom_sheet.dart';
import 'custom_categories_home.dart';
import 'custom_text_filed_search.dart';

class CustomBodyResearch extends StatelessWidget {
  const CustomBodyResearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50.0.h,
        ),
        CustomTextFiledSearch(
          hintText: 'بحث',
          onChanged: (value) {
            print('Search query:$value');
          },
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Colors.white,
              context: (context),
              builder: (context) {
                return CustomBottomSheet(
                  onTap: () {
                    Navigator.pop(context);
                  },
                );
              },
            );
          },
        ),
        SizedBox(
          height: 24.0.h,
        ),
        Row(
          children: [
            CustomCategoriesItem(
              text: 'كاتب',
              width: 150.0.w,
            ),
            SizedBox(
              width: 12.0.w,
            ),
            CustomCategoriesItem(
              text: 'كتابي',
              width: 150.0.w,
            ),
          ],
        ),
        SizedBox(
          height: 24.0.h,
        ),
        Row(
          children: [
            CustomText(
                title: 'نتائج بها',
                fontSize: 20.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kSecondColor),
            SizedBox(
              width: 5.0.w,
            ),
            CustomText(
                title: '“طه”',
                fontSize: 20.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kPrimaryColor),
            const Spacer(),
            CustomText(
                title: '2 كاتب',
                fontSize: 16.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kPrimaryColor),
          ],
        ),
        Expanded(
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => const CustomNameAuthor(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 24.0.h,
                  ),
              itemCount: 6),
        ),
      ],
    );
  }
}
