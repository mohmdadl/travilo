import 'package:flutter/material.dart';

class SeeMore extends StatelessWidget {
  final VoidCallback? onTap;

  const SeeMore({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              const Text(
                "See More",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
               
               Container(
              height: 1,
              width: 55,
              color: Colors.white,
            ),
            ],
          ),
        ),
      ),
    );
  }
}
