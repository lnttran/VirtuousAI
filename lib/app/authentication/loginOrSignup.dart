import 'package:flutter/material.dart';
import 'package:virtuous_ai/app/authentication/login.dart';
import 'package:virtuous_ai/app/authentication/signup.dart';

class loginOrSignup extends StatefulWidget {
  const loginOrSignup({super.key});

  @override
  State<loginOrSignup> createState() => _loginOrSignupState();
}

class _loginOrSignupState extends State<loginOrSignup> {
  bool loginPage = true;

  void togglePages() {
    setState(() {
      loginPage = !loginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (loginPage) {
      return LoginWidget(onTap: togglePages);
    } else {
      return SignUpWidget(onTap: togglePages);
    }
  }
}
