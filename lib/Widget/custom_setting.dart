import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iqraa_app/Widget/custom_Text.dart';
import 'package:iqraa_app/const/const.dart';

class CustomSetting extends StatefulWidget {
  const CustomSetting({
    super.key,
    required this.title,
    required this.image,
    this.icon,
    this.color,
    this.isSwitched = false,
  });
  final String title;
  final String image;
  final IconData? icon;
  final Color? color;
  final bool isSwitched;

  @override
  State<CustomSetting> createState() => _CustomSettingState();
}

class _CustomSettingState extends State<CustomSetting> {
  bool isSwitched = false;

  void toggleSwitch(bool value) {
    setState(() {
      isSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          widget.image,
          width: 24.0.w,
          height: 24.0.h,
          fit: BoxFit.contain,
        ),
        SizedBox(
          width: 20.0.w,
        ),
        CustomText(
            title: widget.title,
            fontSize: 18.0.sp,
            fontWeight: FontWeight.w600,
            colorText: widget.color ?? kPrimaryColor),
        Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(widget.icon),
        ),
        if (widget.isSwitched)
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeColor: Colors.grey.withOpacity(0.2),
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: kPrimaryColor,
          ),
      ],
    );
  }
}
