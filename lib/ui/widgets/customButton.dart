import 'package:flutter/material.dart';
import 'package:login_page/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final EdgeInsets margin;
  final Function() onPressed;
  const CustomButton({
    Key? key,
    required this.text,
    this.width = double.infinity,
    this.margin = EdgeInsets.zero,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: width,
      height: 55.0,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: kPurpleColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusBtn),
          ),
        ),
        child: customTxt(text, kWhiteColor, 18, medium, 2),
      ),
    );
  }
}
