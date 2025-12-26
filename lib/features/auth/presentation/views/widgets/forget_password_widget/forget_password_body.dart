import 'package:flutter/material.dart';
import 'ForgetPasswordActions.dart';
import 'forget_password_form.dart';
import 'forget_password_header.dart';
import 'forget_password_title.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final verticalSpace = constraints.maxHeight * 0.05;

        return Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: verticalSpace * 1.5,
            ),
            child: ListView(
              children: [
                const ForgetPasswordHeader(),
                SizedBox(height: verticalSpace),
                const ForgetPasswordTitle(),
                SizedBox(height: verticalSpace / 2),
                const ForgetPasswordForm(),
                SizedBox(height: verticalSpace * 1.1),
                const ForgetPasswordActions()
              ],
            ),
          ),
        );
      },
    );
  }
}
