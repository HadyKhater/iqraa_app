import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_all_book_app_bar.dart';
import 'package:iqraa_app/Widget/custom_name_author.dart';
import 'package:iqraa_app/const/const.dart';

class AllBookView extends StatelessWidget {
  const AllBookView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            children: [
              SizedBox(
                height: 33.0.h,
              ),
              const CustomAllBookAppBar(),
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
          ),
        ),
      ),
    );
  }
}
