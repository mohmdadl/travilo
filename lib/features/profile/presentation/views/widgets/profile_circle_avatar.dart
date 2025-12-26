import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_images.dart';

class ProfileCircleAvatar extends StatelessWidget {
  const ProfileCircleAvatar({super.key, this.withEditing = false});
  final bool withEditing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: 160,
      child: Stack(
        children: [
          CircleAvatar(
            radius: 75,
            backgroundColor: AppColors.blackBackgroundColor,
            child: ClipOval(child: Image.asset(AppImages.profileImage)),
          ),
          withEditing
              ? Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: AppColors.buttonColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(AppImages.pencileImage),
                ),
              )
              : const SizedBox(),
        ],
      ),
    );
  }
}
