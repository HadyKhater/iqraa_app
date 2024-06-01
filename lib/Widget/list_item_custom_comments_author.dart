import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_comments_about_the_author.dart';

class ListItemCustomCommentsAuthor extends StatelessWidget {
  const ListItemCustomCommentsAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => const CustomCommentsAboutTheAuthor(),
        separatorBuilder: (context, index) => SizedBox(
              height: 8.0.h,
            ),
        itemCount: 5);
  }
}
