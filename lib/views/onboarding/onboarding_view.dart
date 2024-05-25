import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:iqraa_app/Widget/custom_Text.dart';
// import 'package:iqraa_app/const/const.dart';

// class OnboardingView extends StatefulWidget {
//   const OnboardingView({super.key});

//   @override
//   State<OnboardingView> createState() => _OnboardingViewState();
// }

// class _OnboardingViewState extends State<OnboardingView> {
//   final int numPages = 2;
//   final PageController pageController = PageController(initialPage: 0);
//   int currentPage = 0;

//   List<Widget> buildPageIndicator() {
//     List<Widget> list = [];
//     for (int i = 0; i < numPages; i++) {
//       list.add(i == currentPage ? indicator(true) : indicator(false));
//     }
//     return list;
//   }

//   Widget indicator(bool isActive) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 150),
//       margin: EdgeInsets.symmetric(horizontal: 8.0.w),
//       height: 8.0.h,
//       width: isActive ? 24.0.w : 16.0.w,
//       decoration: BoxDecoration(
//         color: isActive ? Colors.white : kPrimaryColor,
//         borderRadius: const BorderRadius.all(Radius.circular(12)),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         surfaceTintColor: Colors.white,
//       ),
//       body: SizedBox(
//         height: 600.0.h,
//         child: PageView(
//           physics: const ClampingScrollPhysics(),
//           controller: pageController,
//           onPageChanged: (int page) {
//             setState(() {
//               currentPage = page;
//             });
//           },
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 30.0.w),
//                   child: SvgPicture.asset(
//                     'assets/images/Frame.svg',
//                     height: 394.0.h,
//                     width: 368.0.w,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 21.0.h,
//                 ),
//                 CustomText(
//                   title: 'كون مكتبتك الخاصة',
//                   fontSize: 32.0.sp,
//                   fontWeight: FontWeight.w700,
//                   colorText: Colors.black,
//                 ),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 30.0.w),
//                   child: SvgPicture.asset(
//                     'assets/images/Group.svg',
//                     height: 394.0.h,
//                     width: 368.0.w,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 21.0.h,
//                 ),
//                 CustomText(
//                   title: 'استمتع بقرائه اكثر من خمسه الاف كتاب',
//                   fontSize: 32.0.sp,
//                   fontWeight: FontWeight.w700,
//                   colorText: Colors.black,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       bottomSheet: currentPage != numPages - 1
//           ? Container(
//               height: 60.0.h,
//               width: double.infinity,
//               color: Colors.white,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: buildPageIndicator(),
//               ),
//             )
          
//           : Container(
//               height: 60.0.h,
//               width: double.infinity,
//               color: Colors.white,
//               child: TextButton(
//                 onPressed: () {
//                   // Navigate to the next screen
//                 },
//                 child: Text(
//                   'Get Started',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 18.0.sp,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//     );
//   }
// }
