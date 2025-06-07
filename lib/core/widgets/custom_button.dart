import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textcolor,
      required this.text,
      this.borderRadius,
      this.fontsize});
  final String text;
  final Color backgroundColor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(15))),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
              color: textcolor,
              fontWeight: FontWeight.w900,
              fontSize: fontsize),
        ),
      ),
    );
  }
}
