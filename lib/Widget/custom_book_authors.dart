import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_Text.dart';

class CustomBookAuthors extends StatelessWidget {
  const CustomBookAuthors({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('asstes/images/Ellipse.png'),
            CustomText(
                title: 'طه حسين',
                fontSize: 14.0.sp,
                fontWeight: FontWeight.w600,
                colorText: Colors.black)
          ],
        ),
      ],
    );
  }
}
