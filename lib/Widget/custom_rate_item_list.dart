import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_rate_item.dart';

class CustomRateItemList extends StatelessWidget {
  const CustomRateItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0.h,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const CustomRateItem(),
          separatorBuilder: (context, index) => SizedBox(
                width: 5.0.w,
              ),
          itemCount: 5),
    );
  }
}
