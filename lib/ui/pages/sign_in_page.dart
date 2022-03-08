import 'package:flutter/material.dart';
import 'package:login_page/shared/theme.dart';
import 'package:login_page/ui/pages/sign_up_page.dart';
import 'package:login_page/ui/widgets/customButton.dart';
import 'package:login_page/ui/widgets/custom_text_form_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            customTxt('Login', kBlueColor, 28.0, semiBold, 4.0),
            const SizedBox(height: 5.0),
            customTxt('Login in your Account', kBlueSkyColor, 18.0, medium, 1)
          ],
        ),
      );
    }

    Widget imageLogin() {
      return Container(
        margin: const EdgeInsets.only(top: 20.0),
        width: MediaQuery.of(context).size.width * 0.67,
        height: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage('assets/images/login_image.png'),
            ),
            boxShadow: [
              BoxShadow(
                  color: kBlueSkyColor.withOpacity(0.5),
                  blurRadius: 20.0,
                  offset: const Offset(10.0, 10.0))
            ]),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(
          text: 'Email Address',
          hinText: 'input your email',
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          text: 'Password',
          hinText: 'input your password',
          secureText: true,
        );
      }

      Widget loginButton() {
        return CustomButton(
            margin: const EdgeInsets.only(top: 30.0),
            text: 'SIGN IN',
            onPressed: () {});
      }

      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
            loginButton(),
          ],
        ),
      );
    }

    Widget signUp() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignUpPage(),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customTxt('Don\'t have account? ', kGreyColor, 14, reguler, 1),
              customTxt('Sign Up', kBlackColor, 14, semiBold, 1)
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMP),
            padding: EdgeInsets.symmetric(horizontal: defaultMP),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                title(),
                imageLogin(),
                inputSection(),
                signUp(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
