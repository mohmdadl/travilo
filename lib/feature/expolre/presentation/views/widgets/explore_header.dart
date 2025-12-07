import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExploreHeader extends StatelessWidget {
  const ExploreHeader({super.key});

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
                "Explore",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
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
