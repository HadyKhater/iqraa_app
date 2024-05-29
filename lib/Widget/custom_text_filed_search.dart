import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/const/const.dart';

class CustomTextFiledSearch extends StatelessWidget {
  const CustomTextFiledSearch({
    super.key,
    this.controller,
    required this.hintText,
    this.onChanged,
  });
  final TextEditingController? controller;
  final String hintText;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefix: SvgPicture.asset('asstes/icons/search.svg'),
        suffix: SvgPicture.asset('asstes/icons/Filter_kprim.svg'),
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        contentPadding:
            EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 10.0.w),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
  );
}
