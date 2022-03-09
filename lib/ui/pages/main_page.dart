import 'package:flutter/material.dart';
import 'package:login_page/shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customTxt('Main Page', kWhiteColor, 14.0, reguler, 1),
        backgroundColor: kBlueSkyColor,
      ),
      body: Center(
          child:
              customTxt('This is Main Page', kBlackColor, 30.0, semiBold, 0)),
    );
  }
}
