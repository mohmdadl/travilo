import 'package:flutter/material.dart';

class CustomRememberMe extends StatelessWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  const CustomRememberMe({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (v) => onChanged(v!),
        ),
        const Text("Remember Me"),

      ],
    );
  }
}
