import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';
import 'custom_Text.dart';
import 'custom_contaner_my_diary.dart';

class CustomAppBarDetails extends StatelessWidget {
  const CustomAppBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 428 / 300,
          child: Opacity(
            opacity: 0.15,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asstes/images/327297.jpg'),
                    alignment: FractionalOffset.topCenter,
                    fit: BoxFit.fitWidth),
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('asstes/icons/share 1.svg'),
            SizedBox(
              width: 100.w,
            ),
            CustomText(
                title: 'تفاصيل',
                fontSize: 18.0.sp,
                fontWeight: FontWeight.w700,
                colorText: kSecondColor),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_forward_rounded))
          ],
        ),
        Positioned(
          top: 140.0.h,
          left: 0.0.w,
          right: 240.0.w,
          child: Row(
            children: [
              Column(
                children: [
                  SvgPicture.asset('asstes/icons/Fill 1.svg'),
                  CustomText(
                      title: '9.5',
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500,
                      colorText: const Color(0xff424242)),
                  CustomText(
                    title: '(100 تقييم)',
                    fontSize: 16.0.sp,
                    fontWeight: FontWeight.w500,
                    colorText: const Color(0xff424242),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
