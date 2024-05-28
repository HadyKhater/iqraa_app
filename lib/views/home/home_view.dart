import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_app_bar_home.dart';
import 'package:iqraa_app/Widget/custom_body_home.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.0.h,
              ),

              ///AppBar
              const CustomAppBarHome(),
              SizedBox(
                height: 24.0.h,
              ),
              
              const Expanded(child: CustomBodyHom()),
            ],
          ),
        ),
      ),
    );
  }
}

