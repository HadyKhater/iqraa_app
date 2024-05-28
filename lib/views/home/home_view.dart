import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_app_bar_home.dart';
import 'package:iqraa_app/Widget/custom_book_authors.dart';
import 'package:iqraa_app/Widget/custom_card_discount.dart';
import 'package:iqraa_app/Widget/custom_categories_home.dart';
import 'package:iqraa_app/Widget/custom_details.dart';
import 'package:iqraa_app/Widget/custom_row_all.dart';
import 'package:iqraa_app/const/const.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.0.h,
                ),

                ///AppBar
                const CustomAppBarHome(),
                SizedBox(
                  height: 24.0.h,
                ),
                //Card Discount
                const CustomCardDiscount(),

                SizedBox(
                  height: 24.0.h,
                ),
                //custom Row All
                RowAll(
                  title: 'الكتاب',
                  all: 'الكل',
                  onTap: () {},
                ),
                SizedBox(
                  height: 24.0.h,
                ),
                //Book authors
                SizedBox(
                  height: 124,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          const CustomBookAuthors(),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 10.0.w,
                          ),
                      itemCount: 10),
                ),

                RowAll(
                  title: 'التصنيفات',
                  all: 'الكل',
                  onTap: () {},
                ),
                SizedBox(
                  height: 10.0.h,
                ),
                //custom Categories Home
                SizedBox(
                  height: 50.0.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) =>
                          const CustomCategoriesHome(),
                      separatorBuilder: (context, index) => SizedBox(
                            width: 10.0.w,
                          ),
                      itemCount: 5),
                ),
                SizedBox(
                  height: 24.0.h,
                ),
                const CustomDetails(),
                SizedBox(
                  height: 33.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
