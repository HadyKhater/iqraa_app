import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_item_for_parts.dart';
import 'custom_row_all.dart';

class CustomForParts extends StatelessWidget {
  const CustomForParts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowAll(
          title: 'الجزء الاول',
          fontSize: 16.0.sp,
          all: '15 فصل',
        ),
        SizedBox(
          height: 250.0.h,
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) => const CustomItemForParts(),
              separatorBuilder: (context, index) => SizedBox(
                    height: 20.0.h,
                  ),
              itemCount: 10),
        ),
      ],
    );
  }
}
