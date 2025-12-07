import 'package:flutter/material.dart';
import 'package:travilo/core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_text_form_field_widget.dart';
class PasswordField extends StatelessWidget {
  final TextEditingController passwordController;
  final bool visible;
  final VoidCallback toggleVisibility;

  const PasswordField({
    super.key,
    required this.passwordController,
    required this.visible,
    required this.toggleVisibility,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      prefixIcon: const Icon(Icons.lock,),
      hintText:  Text("Enter Your Password",style: AppStyles.textStyleExtraLight24),

      controller: passwordController,
      obscureText: visible,
      validator: (value) => value == null || value.isEmpty ? 'required this field' : null,
      suffixIcon: IconButton(
        onPressed: toggleVisibility,
        icon: Icon(visible ? Icons.visibility_off : Icons.visibility,),
      ),

    );
  }
}