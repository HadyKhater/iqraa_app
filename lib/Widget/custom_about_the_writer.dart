import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_details.dart';

class CustomAboutTheWriter extends StatelessWidget {
  const CustomAboutTheWriter({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) => const CustomDetails(),
            separatorBuilder: (context, index) => SizedBox(
                  height: 16.0.h,
                ),
            itemCount: 10);
  }
}