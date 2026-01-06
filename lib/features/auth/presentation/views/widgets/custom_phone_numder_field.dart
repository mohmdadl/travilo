import 'package:flutter/material.dart';
import 'package:travilo/core/utils/widgets/custom_text_form_field_widget.dart';

class PhoneNumderField extends StatelessWidget {
  final TextEditingController phoneController;

  const PhoneNumderField({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: phoneController,
      validator: (value) => value == null || value.isEmpty ? 'Field is required' : null,
      prefixIcon: const Icon(Icons.person),
      hintText: "Enter Your Phone Number",
    );
  }
}