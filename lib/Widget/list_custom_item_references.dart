import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_body_references.dart';

class ListCustomItemReferences extends StatelessWidget {
  const ListCustomItemReferences({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) => const CustomBodyReferences(),
          separatorBuilder: (context, index) => SizedBox(
                height: 24.0.h,
              ),
          itemCount: 7),
    );
  }
}
