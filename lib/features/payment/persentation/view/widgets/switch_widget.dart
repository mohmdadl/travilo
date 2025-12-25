import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool saveCard = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Save this card',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'For faster check out next time',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        Switch(
          value: saveCard,
          onChanged: (val) => setState(() => saveCard = val),
          activeColor: const Color(0xFF007BFF),
        ),
      ],
    );
  }
}
