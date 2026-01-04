import 'package:flutter/material.dart';

import 'package:travilo/core/resources/app_styles.dart';

class LabeledField extends StatelessWidget {
  final String label;
  final Widget field;

  const LabeledField({super.key, required this.label, required this.field});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: AppStyles.textStyleSemiBold16),
        const SizedBox(height: 8),
        field,
        const SizedBox(height: 24),
      ],
    );
  }
}
