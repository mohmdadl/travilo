import 'package:flutter/material.dart';
import 'package:travilo/core/utils/styles.dart';
import 'package:travilo/features/auth/presentation/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String  routeName = 'signUpView';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        centerTitle: true,
        title: Text("Sign Up",style: AppStyles.textStyleBold24,),

      ),
      body: SignUpViewBody(),
    );
  }
}
