import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_authors.dart';
import 'custom_card_discount.dart';
import 'custom_categories_home.dart';
import 'custom_details.dart';
import 'custom_row_all.dart';

class CustomBodyHom extends StatelessWidget {
  const CustomBodyHom({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
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
                itemBuilder: (context, index) => const CustomBookAuthors(),
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
                itemBuilder: (context, index) => const CustomCategoriesItem(
                      text: 'الكل',
                    ),
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
    );
  }
}
