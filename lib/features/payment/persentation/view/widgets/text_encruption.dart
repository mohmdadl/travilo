import 'package:flutter/material.dart';

class TextEncryption extends StatelessWidget {
  const TextEncryption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.lock_outline, color: Colors.grey, size: 12),
        SizedBox(width: 4),
        Text(
          'Transactions are secured with SSL encryption',
          style: TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ],
    );
  }
}