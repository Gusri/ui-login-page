import 'package:flutter/material.dart';
import 'package:login_page/shared/theme.dart';
import 'package:login_page/ui/pages/sign_in_page.dart';
import 'package:login_page/ui/widgets/customButton.dart';
import 'package:login_page/ui/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            customTxt('Sign Up', kBlueColor, 28.0, semiBold, 4),
            const SizedBox(
              height: 5.0,
            ),
            customTxt('Create your Account', kGreyColor, 18.0, medium, 1),
          ],
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(text: 'Email', hinText: 'input your Email');
      }

      Widget nameInput() {
        return CustomTextFormField(text: 'Name', hinText: 'input your Name');
      }

      Widget passwordInput() {
        return CustomTextFormField(
          text: 'Password',
          hinText: 'input your password',
          secureText: true,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          text: 'Hobby',
          hinText: 'input your hobby',
        );
      }

      Widget signUpButton() {
        return CustomButton(
            margin: const EdgeInsets.only(top: 55.0),
            text: 'SIGN UP',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false);
            });
      }

      return Container(
        margin: const EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            signUpButton(),
          ],
        ),
      );
    }

    Widget signInButton() {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SignInPage(),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(top: 10.0, bottom: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customTxt(
                  'Already have Account ? ', kGreyColor, 14.0, reguler, 1),
              customTxt('Sign In', kBlackColor, 14, semiBold, 1),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMP),
            padding: EdgeInsets.symmetric(horizontal: defaultMP),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                title(),
                inputSection(),
                signInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
