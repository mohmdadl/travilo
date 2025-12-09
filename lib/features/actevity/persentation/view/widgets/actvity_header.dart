import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActveityHeader extends StatelessWidget {
  const ActveityHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ← السهم
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(CupertinoIcons.back, color: Colors.white,weight: 17,),
          ),
          const Expanded(
            child: Center(
              child: Text(
                "Excursions & Activities",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 24),
        ],
      ),
    );
  }
}
