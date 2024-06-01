import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_body_notification.dart';

class ListCustomItemNotification extends StatelessWidget {
  const ListCustomItemNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) => const CustomBodyNotification(),
          separatorBuilder: (context, index) => SizedBox(
                height: 20.0.h,
              ),
          itemCount: 5),
    );
  }
}
