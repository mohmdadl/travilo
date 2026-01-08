import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travilo/core/resources/app_colors.dart';
import 'package:travilo/core/resources/app_images.dart';

class SocialButtonsRow extends StatelessWidget {
  const SocialButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: _socialButton("Google", AppImages.iconGoogleImage)),
        SizedBox(width: 32),
        Expanded(child: _socialButton("Apple", AppImages.iconAppleImage)),
      ],
    );
  }

  Widget _socialButton(String text, String pathImage) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(pathImage),
            const SizedBox(width: 12),
            Text(text),
          ],
        ),
      ),
    );
  }
}
