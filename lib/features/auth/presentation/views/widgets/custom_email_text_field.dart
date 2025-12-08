import 'package:flutter/material.dart';
import '../../../../../core/utils/widgets/custom_text_form_field_widget.dart';


class EmailField extends StatelessWidget {
  final TextEditingController emailController;

  const EmailField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      prefixIcon: const Icon(Icons.email_outlined,),
      hintText: "Enter your email",

      controller: emailController,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'required this field';
        }
        final bool emailValid = RegExp(
          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
        ).hasMatch(value);
        return emailValid ? null : 'Enter a valid email';
      },
    );
  }
}