import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travilo/core/utils/app_images.dart';
import 'package:travilo/core/utils/styles.dart';
import 'package:travilo/features/auth/presentation/views/widgets/log_in_widgets/custom_forget_password_widget.dart';

import '../../../../../core/utils/widgets/custom_button.dart';
import 'custom_email_text_field.dart';
import 'custom_password_text_field.dart';
import 'log_in_widgets/navigate_to_sign_up_widget.dart';
import 'log_in_widgets/social_button_row.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  bool visible = true;
  bool rememberMe = false;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void toggleVisibility() {
    setState(() => visible = !visible);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff102D4A),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SvgPicture.asset(AppImages.loginLogoImage),
                ),
              ),

              const SizedBox(height: 24),

              Text("Welcome Back", style: AppStyles.textStyleBold24),

              const SizedBox(height: 24),

             Align(
               alignment: Alignment.centerLeft,
                 child: Text("Email",style:AppStyles.textStyleSemiBold16,)),
              const SizedBox(height: 8),
              EmailField(
                emailController: emailController),

              const SizedBox(height: 24),

              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("password",style:AppStyles.textStyleSemiBold16,)),
              const SizedBox(height: 8),
              PasswordField(
                passwordController: passwordController,
                visible: visible,
                toggleVisibility: toggleVisibility,
              ),

             const SizedBox(height:8 ),
              Align(
                alignment: Alignment.topRight,
                  child: CustomForgetPasswordWidget()),

              const SizedBox(height: 24),
              CustomButton(
                  onTap: () {},
                text: "Sign In",
              ),

              const SizedBox(height: 24),

              const SocialButtonsRow(),

              const SizedBox(height: 20),
               CustomTextButtonNavigation(
                text: "Don’t have an account? ",
                textButton: "Sign Up",
                onTap: (){},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
