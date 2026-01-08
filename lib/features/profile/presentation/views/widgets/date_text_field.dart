import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/styles.dart';

class DateTextField extends StatelessWidget {
  const DateTextField({
    super.key,
    required this.controller,
    this.onSaved,
    this.validator,
  });

  final TextEditingController controller;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      style: const TextStyle(color: Colors.white),
      onTap: () async {
        final DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );

        if (pickedDate != null) {
          controller.text =
              "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
        }
      },
      onSaved: onSaved,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.primaryColor.withOpacity(0.09),
        hintText: "mm/dd/yyyy",
        hintStyle: AppStyles.textStyleExtraLight18.copyWith(color: Colors.grey),
        suffixIcon: const Icon(
          Icons.calendar_month_outlined,
          color: AppColors.calenderIconColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 16,
        ),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        errorBorder: buildBorder(Colors.red),
        focusedErrorBorder: buildBorder(Colors.red),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? const Color(0xFF34506B), width: 1),
    );
  }
}
