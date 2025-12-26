import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_color.dart';
import '../../../../../../core/utils/app_images.dart';

class ForgetPasswordHeader extends StatelessWidget {
  const ForgetPasswordHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 120,
        width: 120,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.secondBackgroundColor,
              child: Image(
                image: AssetImage(AppImages.lockImage),
                width: 52,
                height: 65,
              ),
            ),
            Positioned(
              top: 10,
              right: -2,
              child: Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                  color: AppColors.lightBackgroundColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
