import 'package:flutter/material.dart';

import 'package:travilo/home_layout.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
static const String routeName = 'sign-in';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: HomeLayout(),
    );
  }
}
