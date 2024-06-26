import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_app_bar_profile.dart';
import 'package:iqraa_app/Widget/custom_log_out_show_bottom_sheet.dart';
import 'package:iqraa_app/Widget/custom_profile_image.dart';
import 'package:iqraa_app/Widget/custom_setting.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 35.0.h,
              ),
              const CustomAppBarProfile(),
              SizedBox(
                height: 24.0.h,
              ),
              const CustomProfileImage(),
              SizedBox(
                height: 48.0.h,
              ),
              const CustomSetting(
                  title: 'تعديل الحساب',
                  image: 'asstes/icons/Profile.svg',
                  icon: Icons.arrow_forward_ios_rounded),
              SizedBox(
                height: 20.0.h,
              ),
              const CustomSetting(
                title: 'الاشعارات',
                image: 'asstes/icons/Notification2.svg',
                isSwitched: true,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              const CustomSetting(
                title: 'الوضع المظلم',
                image: 'asstes/icons/Show1.svg',
                isSwitched: true,
              ),
              SizedBox(
                height: 20.0.h,
              ),
              const CustomSetting(
                  title: 'الاشتراك',
                  image: 'asstes/icons/Wallet.svg',
                  icon: Icons.arrow_forward_ios_rounded),
              SizedBox(
                height: 20.0.h,
              ),
              const CustomSetting(
                  title: 'سياسة الخصوصية',
                  image: 'asstes/icons/Lock.svg',
                  icon: Icons.arrow_forward_ios_rounded),
              SizedBox(
                height: 20.0.h,
              ),
              const CustomSetting(
                  title: 'تواصل معنا',
                  image: 'asstes/icons/Call.svg',
                  icon: Icons.arrow_forward_ios_rounded),
              SizedBox(
                height: 20.0.h,
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: false,
                    backgroundColor: Colors.white,
                    context: (context),
                    builder: (context) {
                      return const CustomLogOutShowBottomSheet();
                    },
                  );
                },
                child: const CustomSetting(
                  title: 'تسجيل الخروج',
                  color: Color(0xffF75555),
                  image: 'asstes/icons/Logout.svg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
