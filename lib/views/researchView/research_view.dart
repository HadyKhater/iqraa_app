import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/Widget/custom_body_research.dart';
import 'package:iqraa_app/Widget/custom_categories_home.dart';
import 'package:iqraa_app/Widget/custom_text_filed_search.dart';
import 'package:iqraa_app/Widget/custom_text_form_filed.dart';
import 'package:iqraa_app/const/const.dart';

class ResearchView extends StatelessWidget {
  const ResearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            child: const CustomBodyResearch()),
      ),
    );
  }
}
