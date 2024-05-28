import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_app_bar_section.dart';
import 'package:iqraa_app/Widget/custom_choose_favorite.dart';
import 'package:iqraa_app/views/my_diary/my_diary_view.dart';

class SectionView extends StatefulWidget {
  const SectionView({super.key});

  @override
  State<SectionView> createState() => _SectionViewState();
}

class _SectionViewState extends State<SectionView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 35.0.h,
            ),
            const CustomAppBarSection(),
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
                  itemBuilder: (context, index) =>
                      CustomChooseFavorite(onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyDiary()));
                  }),
                  itemCount: 50,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
