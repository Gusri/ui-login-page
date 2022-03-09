import 'package:flutter/material.dart';
import 'package:login_page/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hinText;
  final bool secureText;
  const CustomTextFormField(
      {Key? key,
      required this.text,
      required this.hinText,
      this.secureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customTxt(text, kBlackColor, 14, reguler, 1),
          const SizedBox(height: 5.0),
          TextFormField(
            obscureText: secureText,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              filled: true,
              fillColor: kWhiteColor,
              hintText: hinText,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
                borderSide: BorderSide(color: kBlueColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
