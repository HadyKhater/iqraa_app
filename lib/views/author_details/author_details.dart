import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_about_the_writer.dart';
import 'package:iqraa_app/Widget/custom_app_bar_author_details.dart';
import 'package:iqraa_app/Widget/custom_book.dart';
import 'package:iqraa_app/Widget/custom_select_table_item.dart';
import 'package:iqraa_app/const/const.dart';

class AuthorDetails extends StatefulWidget {
  const AuthorDetails({super.key});

  @override
  State<AuthorDetails> createState() => _AuthorDetailsState();
}

class _AuthorDetailsState extends State<AuthorDetails> {
  int selectedIndex = 0;
  void onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget getSelectedContent(int index) {
    switch (selectedIndex) {
      case 0:
        return const CustomAboutTheWriter();
      case 1:
        return const CustomBook();
      case 2:
        return Text('');
      default:
        return const Text('Select an item');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35.0.h,
              ),
              //AppBar
              const CustomAppBarAuthorDetails(),
              //body
              SizedBox(
                height: 24.0.h,
              ),
              Center(child: Image.asset('asstes/images/Ellipse (2).png')),
              Center(
                child: CustomText(
                  title: 'طه حسين',
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kSecondColor,
                ),
              ),
              Center(
                child: CustomText(
                  title: 'كاتب ومؤرخ',
                  fontSize: 14.0.sp,
                  fontWeight: FontWeight.w600,
                  colorText: const Color(0xff424242),
                ),
              ),
              SizedBox(
                height: 48.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SelectableItem(
                    title: 'عن الكاتب',
                    isSelected: selectedIndex == 0,
                    onTap: () => onItemSelected(0),
                  ),
                  SelectableItem(
                    title: 'كتب',
                    isSelected: selectedIndex == 1,
                    onTap: () => onItemSelected(1),
                  ),
                  SelectableItem(
                    title: 'تعليقات',
                    isSelected: selectedIndex == 2,
                    onTap: () => onItemSelected(2),
                  ),
                ],
              ),
              SizedBox(height: 15.0.h),
              Expanded(
                child: getSelectedContent(selectedIndex),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
