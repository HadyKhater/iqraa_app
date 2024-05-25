import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_choose_country.dart';
import 'package:iqraa_app/Widget/custom_onboarding.dart';
import 'package:iqraa_app/views/onboarding/onboarding_view.dart';

class ChooseCountry extends StatefulWidget {
  const ChooseCountry({super.key});

  @override
  State<ChooseCountry> createState() => _ChooseCountryState();
}

class _ChooseCountryState extends State<ChooseCountry> {
  int? selectedCountryIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        alignment: Alignment.topRight,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff233973), Color(0xff5D77BE)],
            begin: Alignment.topRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                  title: 'اختر دولتك',
                  fontSize: 24.0.sp,
                  fontWeight: FontWeight.w700,
                  colorText: Colors.white),
              SizedBox(
                height: 20.0.h,
              ),
              CustomChooseCountry(
                text: 'مصر',
                image: 'asstes/icons/iconegypt.svg',
                value: 0,
                isSelected: selectedCountryIndex == 0,
                onChanged: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardingView()));
                    selectedCountryIndex = 0;
                  });
                },
              ),
              SizedBox(
                height: 20.0.h,
              ),
              CustomChooseCountry(
                text: 'السعودية',
                image: 'asstes/icons/iconsaudia.svg',
                value: 1,
                isSelected: selectedCountryIndex == 1,
                onChanged: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardingView()));
                    selectedCountryIndex = 1;
                  });
                },
              ),
              SizedBox(
                height: 20.0.h,
              ),
              CustomChooseCountry(
                text: 'الامارات',
                image: 'asstes/icons/iconImarat.svg',
                value: 2,
                isSelected: selectedCountryIndex == 2,
                onChanged: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CustomOnboarding()));
                    selectedCountryIndex = 2;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
