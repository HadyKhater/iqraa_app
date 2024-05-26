import 'package:flutter/material.dart';
import 'package:iqraa_app/const/const.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.hint,
    this.maxlines = 1,
    this.onSave,
    required this.iconDataPrefx,
    this.iconDataSufx,
    this.type,
  });
  final String hint;
  final int maxlines;
  final IconData iconDataPrefx;
  final IconData? iconDataSufx;
  final void Function(String?)? onSave;
  final TextInputType? type;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextFormField(
        keyboardType: type,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onSaved: onSave,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Field Is Required';
          } else {
            return null;
          }
        },
        cursorColor: kPrimaryColor,
        maxLines: maxlines,
        decoration: InputDecoration(
          suffixIcon: Icon(iconDataSufx,),
          prefixIcon: Icon(iconDataPrefx),
          hintText: hint,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor),
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(color: color ?? Colors.white),
  );
}
