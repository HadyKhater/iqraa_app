import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_button.dart';
import 'package:iqraa_app/Widget/custom_onboarding.dart';
import 'package:iqraa_app/const/const.dart';
import 'package:iqraa_app/views/Sign%20in/sign_in_femail.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController controller = PageController();
  void onNextPressed() {
    if (controller.page != null && controller.page! < 1) {
      controller.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SignInFemailView()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: const [
              CustomOnboarding(
                title: 'كون مكتبتك الخاصة',
                image: 'asstes/images/Frame.svg',
              ),
              CustomOnboarding(
                title: 'استمتع بقرائه اكثر من خمسه الاف كتاب',
                image: 'asstes/images/Group.svg',
              ),
            ],
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SmoothPageIndicator(
                    controller: controller,
                    count: 2,
                    effect: WormEffect(
                      spacing: 5,
                      dotHeight: 8.0.h,
                      dotWidth: 25.0.w,
                      activeDotColor: kPrimaryColor,
                      dotColor: Colors.grey.withOpacity(0.4),
                    ),
                  ),
                  SizedBox(height: 60.h),
                  CustomButton(
                    title: 'التالي',
                    onTap: onNextPressed,
                  ),
                  SizedBox(
                    height: 30.0.h,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
