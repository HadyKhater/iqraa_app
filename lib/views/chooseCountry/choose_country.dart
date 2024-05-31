import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_choose_country.dart';
import 'package:iqraa_app/const/const.dart';
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
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: kPrimaryColor,
                          title: CustomText(
                              textAlign: TextAlign.center,
                              title: 'مصر',
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w700,
                              colorText: Colors.white),
                          // content:  Text("This is the dialog content."),
                          actions: [
                            ElevatedButton(
                              onPressed: Navigator.of(context).pop,
                              child: CustomText(
                                  title: 'الغاء',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w600,
                                  colorText: Colors.black),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OnboardingView()));
                              },
                              child: CustomText(
                                  title: 'تمام',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w600,
                                  colorText: Colors.black),
                            ),
                          ],
                        );
                      },
                    );
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
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: kPrimaryColor,
                          title: CustomText(
                              textAlign: TextAlign.center,
                              title: 'السعوديه',
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w700,
                              colorText: Colors.white),
                          actions: [
                            ElevatedButton(
                              onPressed: Navigator.of(context).pop,
                              child: CustomText(
                                  title: 'الغاء',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w600,
                                  colorText: Colors.black),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OnboardingView()));
                              },
                              child: CustomText(
                                  title: 'تمام',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w600,
                                  colorText: Colors.black),
                            ),
                          ],
                        );
                      },
                    );
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
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: kPrimaryColor,
                          title: CustomText(
                              textAlign: TextAlign.center,
                              title: 'الامارات',
                              fontSize: 18.0.sp,
                              fontWeight: FontWeight.w700,
                              colorText: Colors.white),
                          // content:  Text("This is the dialog content."),
                          actions: [
                            ElevatedButton(
                              onPressed: Navigator.of(context).pop,
                              child: CustomText(
                                  title: 'الغاء',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w600,
                                  colorText: Colors.black),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OnboardingView()));
                              },
                              child: CustomText(
                                  title: 'تمام',
                                  fontSize: 12.0.sp,
                                  fontWeight: FontWeight.w600,
                                  colorText: Colors.black),
                            ),
                          ],
                        );
                      },
                    );
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
