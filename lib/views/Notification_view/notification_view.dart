import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_app_bar.dart';
import 'package:iqraa_app/Widget/list_custom_item_notification.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

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
              const CustomAppBar(
                title: 'الاشعارات',
              ),
              //body
              const ListCustomItemNotification(),
              SizedBox(
                height: 20.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
