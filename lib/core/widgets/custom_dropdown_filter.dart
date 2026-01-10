import 'package:flutter/material.dart';

class CustomDropdownFilter extends StatelessWidget {
  final String hint;
  final List<String> items;
  final Function(String?) onChanged;
  final IconData? prefixIcon;

  const CustomDropdownFilter({
    super.key,
    required this.hint,
    required this.items,
    required this.onChanged,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: const Color(0xFF1F222A),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          hint: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (prefixIcon != null) ...[
                Icon(prefixIcon, color: Colors.white, size: 18),
                const SizedBox(width: 8),
              ],
              Text(
                hint,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
          icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          dropdownColor: const Color(0xFF1F222A),
          style: const TextStyle(color: Colors.white),
          items: items.map((String value) {
            return DropdownMenuItem<String>(value: value, child: Text(value));
          }).toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
