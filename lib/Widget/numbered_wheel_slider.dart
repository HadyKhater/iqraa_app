import 'package:flutter/material.dart';
import 'package:iqraa_app/const/const.dart';
import 'package:numberpicker/numberpicker.dart';

class NumberedWheelSlider extends StatefulWidget {
  final int minValue;
  final int maxValue;
  final int initialValue;
  final ValueChanged<int>? onChanged;

  const NumberedWheelSlider({
    Key? key,
    required this.minValue,
    required this.maxValue,
    required this.initialValue,
    this.onChanged,
  }) : super(key: key);

  @override
  _NumberedWheelSliderState createState() => _NumberedWheelSliderState();
}

class _NumberedWheelSliderState extends State<NumberedWheelSlider> {
  late int value;

  @override
  void initState() {
    super.initState();
    value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        NumberPicker(
          minValue: widget.minValue,
          maxValue: widget.maxValue,
          value: value,
          onChanged: (value) {
            setState(() {
              value = value;
            });
            if (widget.onChanged != null) {
              widget.onChanged!(value);
            }
          },
          itemHeight: 75.0,
          textStyle: const TextStyle(
            fontSize: 43.0,
            fontWeight: FontWeight.w400,
            color: kPrimaryColor,
          ),
          selectedTextStyle: const TextStyle(
              fontSize: 43.0,
              fontWeight: FontWeight.w600,
              color: kPrimaryColor),
          axis: Axis.vertical,
        ),
        CustomPaint(
          painter: LinePainter(),
        ),
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = kPrimaryColor
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;

    canvas.drawLine(const Offset(-30, -25), const Offset(30, -25), paint);
    canvas.drawLine(const Offset(-30, 25), const Offset(30, 25), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
