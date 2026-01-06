import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travilo/core/utils/app_images.dart';
import 'package:travilo/core/utils/styles.dart';

import 'package:travilo/features/auth/presentation/bloc/login_cubit.dart';
import 'package:travilo/features/auth/presentation/bloc/login_state.dart';
import 'package:travilo/features/auth/presentation/views/sign_up_view.dart';
import 'package:travilo/features/auth/presentation/views/widgets/log_in_widgets/custom_forget_password_widget.dart';
import '../../../../../core/utils/widgets/custom_button.dart';
import 'custom_email_text_field.dart';
import 'custom_password_text_field.dart';
import 'log_in_widgets/custom_text_button_navigation.dart';
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

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
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
    return 
       Center(
        child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            }

            if (state is LoginSucsess) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Login successful'),
                  backgroundColor: Colors.green,
                ),
              );

              emailController.clear();
              passwordController.clear();
            }
          },
          builder: (context, state) {
            if (state is LoginLoading) {
              return const Center(child: CircularProgressIndicator());
            }

            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    SvgPicture.asset(AppImages.loginLogoImage),
                    const SizedBox(height: 24),
                    Text("Welcome Back", style: AppStyles.textStyleBold24),
                    const SizedBox(height: 24),
                    EmailField(emailController: emailController),
                    const SizedBox(height: 16),
                    PasswordField(
                      passwordController: passwordController,
                      visible: visible,
                      toggleVisibility: toggleVisibility,
                    ),
                    const SizedBox(height: 16),
                    const Align(
                      alignment: Alignment.topRight,
                      child: CustomForgetPasswordWidget(),
                    ),
                    const SizedBox(height: 24),
                    CustomButton(
                      onTap: () {
                        context.read<LoginCubit>().login(
                          emailController.text.trim(),
                          passwordController.text.trim(),
                        );
                      },
                      text: "Sign In",
                    ),
                    const SizedBox(height: 20),
                    const SocialButtonsRow(),
                    const SizedBox(height: 20),
                    CustomTextButtonNavigation(
                      text: "Don’t have an account? ",
                      textButton: "Sign Up",
                      onTap: () {
                        Navigator.of(context).pushNamed(SignUpView.routeName);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    
  }
}
