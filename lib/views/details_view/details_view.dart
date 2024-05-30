import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/about_the_writer.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_app_bar_details.dart';
import 'package:iqraa_app/Widget/custom_button.dart';
import 'package:iqraa_app/Widget/custom_contaner_my_diary.dart';
import 'package:iqraa_app/Widget/custom_for_parts.dart';
import 'package:iqraa_app/Widget/custom_item_for_parts.dart';
import 'package:iqraa_app/Widget/custom_select_table_item.dart';
import 'package:iqraa_app/const/const.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  int selectedIndex = 0;

  void onItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget getSelectedContent(int index) {
    switch (selectedIndex) {
      case 0:
        return const AboutTheWriter();
      case 1:
        return const CustomForParts();
      case 2:
        return Text('تعليقات');
      default:
        return Text('Select an item');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0.h,
              ),
              const CustomAppBarDetails(),
              Center(
                child: CustomText(
                  title: 'الأيام',
                  fontSize: 32.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: kSecondColor,
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              const Center(child: CustomContanerMyDiary()),
              SizedBox(
                height: 24.0.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SelectableItem(
                    title: 'عن الكتاب',
                    isSelected: selectedIndex == 0,
                    onTap: () => onItemSelected(0),
                    // content: getSelectedContent(0),
                  ),
                  SelectableItem(
                    title: 'الأجزاء',
                    isSelected: selectedIndex == 1,
                    onTap: () => onItemSelected(1),
                    // content: getSelectedContent(1),
                  ),
                  SelectableItem(
                    title: 'تعليقات',
                    isSelected: selectedIndex == 2,
                    onTap: () => onItemSelected(2),
                    content: getSelectedContent(2),
                  ),
                ],
              ),
              SizedBox(height: 24.0.h),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: getSelectedContent(selectedIndex),
                ),
              ),
              const CustomButton(title: 'أقراء الاَن'),
              SizedBox(
                height: 15.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
