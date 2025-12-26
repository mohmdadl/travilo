import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_text_form_field_widget.dart';
import 'date_text_field.dart';

class InputFieldSection extends StatefulWidget {
  const InputFieldSection({super.key});

  @override
  State<InputFieldSection> createState() => _InputFieldSectionState();
}

class _InputFieldSectionState extends State<InputFieldSection> {
  final TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Full Name", style: AppStyles.textStyleBoldDark20),
        const SizedBox(height: 8),
        const CustomTextField(),
        const SizedBox(height: 16),
        const Text("Email Address", style: AppStyles.textStyleBoldDark20),
        const SizedBox(height: 8),
        const CustomTextField(),
        const SizedBox(height: 16),
        const Text("Phone Number", style: AppStyles.textStyleBoldDark20),
        const SizedBox(height: 8),
        const CustomTextField(),
        const SizedBox(height: 16),
        const Text("Date of Birth", style: AppStyles.textStyleBoldDark20),
        const SizedBox(height: 8),
        DateTextField(controller: dateController),
      ],
    );
  }
}
