import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarAuthorDetails extends StatelessWidget {
  const CustomAppBarAuthorDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('asstes/icons/More Circle1.svg'),
        const Spacer(),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_forward_rounded))
      ],
    );
  }
}
