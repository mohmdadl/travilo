import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travilo/core/utils/styles.dart';
import 'package:travilo/core/utils/widgets/custom_button.dart';
import 'package:travilo/features/auth/presentation/bloc/auth_cubit.dart';
import 'package:travilo/features/auth/presentation/bloc/auth_state.dart';

import 'package:travilo/features/auth/presentation/views/sign_in_view.dart';
import 'package:travilo/features/auth/presentation/views/widgets/custom_email_text_field.dart';
import 'package:travilo/features/auth/presentation/views/widgets/custom_password_text_field.dart';
import 'package:travilo/features/auth/presentation/views/widgets/custom_phone_numder_field.dart';
import 'package:travilo/features/auth/presentation/views/widgets/log_in_widgets/custom_text_button_navigation.dart';
import 'custom_labeled_field.dart';
import 'custom_name_text_field.dart';
import 'custom_terms_and_condition_widget.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController phoneNumberController;

  bool visible = true;
  bool confirmVisible = true;
  bool agree = false;

  @override
  void initState() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    phoneNumberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthSucsess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
            // Navigator.of(context).pushNamed(ConfirmEmailView.routeName);
            nameController.clear();
            emailController.clear();
            passwordController.clear();
            phoneNumberController.clear();
          }
          if (state is AuthError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            if (state is AuthLoading) {
              return Center(child: CircularProgressIndicator());
            }
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Your Account",
                      style: AppStyles.textStyleBold24,
                    ),
                    const SizedBox(height: 16),

                    Text(
                      "Start planning your next adventure.",
                      style: AppStyles.textStyleMedium18.copyWith(
                        color: const Color(0xff95A4B9),
                      ),
                    ),

                    const SizedBox(height: 24),
                    LabeledField(
                      label: "Full Name",
                      field: NameField(nameController: nameController),
                    ),
                    LabeledField(
                      label: "Email Address",
                      field: EmailField(emailController: emailController),
                    ),
                    LabeledField(
                      label: "Password",
                      field: PasswordField(
                        passwordController: passwordController,
                        visible: visible,
                        toggleVisibility: () {
                          setState(() => visible = !visible);
                        },
                      ),
                    ),
                    LabeledField(
                      label: "PhoneNumer",
                      field: PhoneNumderField(
                        phoneController: phoneNumberController,
                      ),
                    ),
                    CustomTermsAndConditions(
                      isChecked: agree,
                      onChanged: (v) => setState(() => agree = v),
                    ),

                    const SizedBox(height: 24),
                    CustomButton(
                      text: "Create Account",
                      onTap: () {
                        context.read<AuthCubit>().signUp(
                          userName: nameController.text.trim(),
                          email: emailController.text.trim(),
                          phoneNum: phoneNumberController.text.trim(),
                          password: passwordController.text.trim(),
                        );
                      },
                    ),

                    const SizedBox(height: 24),
                    CustomTextButtonNavigation(
                      text: "Already have an account? ",
                      textButton: "Sign In",
                      onTap: () {
                        Navigator.of(context).pushNamed(SignInView.routeName);
                      },
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
