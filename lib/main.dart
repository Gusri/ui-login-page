import 'package:flutter/material.dart';
import 'package:login_page/ui/pages/main_page.dart';
import 'package:login_page/ui/pages/screen_page.dart';
import 'package:login_page/ui/pages/sign_in_page.dart';
import 'package:login_page/ui/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page Application',
      routes: {
        '/': (context) => ScreenPage(),
        '/main': (context) => MainPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
      },
    );
  }
}
