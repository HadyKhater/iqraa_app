import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/views/all_book_view/all_book_view.dart';
import 'package:iqraa_app/views/author_details/author_details.dart';
import 'package:iqraa_app/views/details_view/details_view.dart';
import 'package:iqraa_app/views/my_diary/my_diary_view.dart';
import 'package:iqraa_app/views/researchView/research_view.dart';

import 'custom_app_bar_home.dart';
import 'custom_book_authors.dart';
import 'custom_bottom_sheet.dart';
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
        ///AppBar
        children: [
          CustomAppBarHome(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                context: (context),
                builder: (context) {
                  return CustomBottomSheet(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResearchView()));
                    },
                  );
                },
              );
            },
          ),
          SizedBox(
            height: 20.0.h,
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
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AllBookView(),
                ),
              );
            },
          ),
          SizedBox(
            height: 24.0.h,
          ),
          //Book authors
          SizedBox(
            height: 124,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AuthorDetails()));
              },
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const CustomBookAuthors(),
                  separatorBuilder: (context, index) => SizedBox(
                        width: 10.0.w,
                      ),
                  itemCount: 10),
            ),
          ),

          RowAll(
            title: 'التصنيفات',
            all: 'الكل',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyDiary()));
            },
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
          CustomDetails(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const DetailsView()));
            },
          ),
          SizedBox(
            height: 33.0.h,
          ),
        ],
      ),
    );
  }
}
