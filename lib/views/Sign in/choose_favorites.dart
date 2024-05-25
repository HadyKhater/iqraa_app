import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/appbar_sign_in.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_button.dart';
import 'package:iqraa_app/Widget/custom_choose_favorite.dart';
import 'package:iqraa_app/views/Sign%20in/choose_sign_in.dart';

class ChooseFavorites extends StatefulWidget {
  const ChooseFavorites({super.key});

  @override
  State<ChooseFavorites> createState() => _ChooseFavoritesState();
}

class _ChooseFavoritesState extends State<ChooseFavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBarSingIn(
            text: '2/2',
            width: 160.0.w,
          ),
          SizedBox(
            height: 14.0.h,
          ),
          CustomText(
            title: 'اختر بعض التصنيفات المفضلة إليك',
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w600,
            colorText: Colors.black,
          ),
          // SizedBox(
          //   height: 24.0.h,
          // ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.4.w),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 1.45,
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 16.0,
                ),
                itemBuilder: (context, index) => const CustomChooseFavorite(),
                itemCount: 50,
              ),
            ),
          ),
          CustomButton(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChooseSignInView()));
              },
              title: 'التالي'),
          SizedBox(
            height: 20.0.h ,
          ),
        ],
      ),
    );
  }
}
