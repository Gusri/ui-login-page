import 'package:flutter/material.dart';
import 'package:login_page/shared/theme.dart';
import 'package:login_page/ui/widgets/customButton.dart';

class ScreenPage extends StatelessWidget {
  const ScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 50.0),
        child: customTxt('Welcome', kBlueColor, 28, semiBold, 4),
      );
    }

    Widget welcomeImage() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        width: MediaQuery.of(context).size.width * 0.67,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/welcome_image.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: kBlueSkyColor.withOpacity(0.5),
                blurRadius: 20.0,
                offset: const Offset(10.0, 10.0),
              ),
            ]),
      );
    }

    Widget button() {
      Widget signInBtn() {
        return CustomButton(
            width: 320.0,
            text: 'SIGN IN',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/sign-in', (route) => false);
            });
      }

      Widget signUpBtn() {
        return CustomButton(
            width: 320.0,
            margin: const EdgeInsets.only(top: 15.0),
            text: 'SIGN UP',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/sign-up', (route) => false);
            });
      }

      return Container(
        margin: const EdgeInsets.only(top: 115.0),
        child: Column(
          children: [signInBtn(), signUpBtn()],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMP),
        padding: EdgeInsets.symmetric(horizontal: defaultMP),
        child: Center(
          child: Column(
            children: [
              title(),
              welcomeImage(),
              button(),
            ],
          ),
        ),
      )),
    );
  }
}
