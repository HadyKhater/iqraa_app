import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_app_bar.dart';
import 'package:iqraa_app/Widget/list_custom_item_references.dart';

class ReferencesView extends StatelessWidget {
  const ReferencesView({super.key});

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
                height: 35.0.h,
              ),
              //appBar
              const CustomAppBar(),
              SizedBox(
                height: 30.0.h,
              ),
              const ListCustomItemReferences(),
              SizedBox(
                height: 30.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
