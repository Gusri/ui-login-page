import 'package:flutter/material.dart';

Color kBackgroundColor = const Color(0xfff3f9fe);
Color kBlackColor = const Color(0xff000000);
Color kWhiteColor = const Color(0xffffffff);
Color kGreyColor = const Color(0xff8d8d8d);
Color kBlueColor = const Color(0xff0d0f35);
Color kBlueSkyColor = const Color(0xff406280);
Color kPurpleColor = const Color(0xff5b628f);

double radiusBtn = 30.0;
double radiusTextFormField = 30.0;
double defaultMP = 20.0;

String? text;
Color? clr;
FontWeight? fWeight;
double fSize = 14;
double lSpacing = 3;

//String txt, double fsize, Color clr, FontWeight fw, double ls
customTxt(
    String text, Color clr, double fSize, FontWeight fWeight, double lSpacing) {
  return Text(
    text,
    style: TextStyle(
      fontFamily: 'Poppins',
      color: clr,
      fontSize: fSize,
      fontWeight: fWeight,
      letterSpacing: lSpacing,
    ),
  );
}

FontWeight light = FontWeight.w300;
FontWeight reguler = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
