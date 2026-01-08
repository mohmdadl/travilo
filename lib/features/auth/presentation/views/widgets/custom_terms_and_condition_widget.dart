import 'package:flutter/material.dart';

import 'package:travilo/core/resources/app_styles.dart';

class CustomTermsAndConditions extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  const CustomTermsAndConditions({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          value: isChecked,
          onChanged: (v) => onChanged(v!),
        ),
        Expanded(
          child: Wrap(
            children: [
              Text("I agree to the ", style: AppStyles.textStyleMedium16),
              Text(
                "Terms & Conditions",
                style: AppStyles.textStyleMedium16.copyWith(
                  color: Colors.blueAccent,
                ),
              ),
              Text(" and ", style: AppStyles.textStyleMedium16),
              Text(
                "Privacy Policy.",
                style: AppStyles.textStyleMedium16.copyWith(
                  color: Colors.blueAccent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
