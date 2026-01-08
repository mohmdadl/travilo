import 'package:flutter/material.dart';

import '../resources/app_images.dart';
import '../utils/app_color.dart';
import '../utils/styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, this.withIcon = false});

  final String title;
  final bool withIcon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.blackBackgroundColor,
      centerTitle: true,
      leading: IconButton(
        padding: const EdgeInsets.only(left: 32),
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
      ),
      actions: [
        withIcon
            ? IconButton(
                padding: const EdgeInsets.only(right: 32),
                onPressed: () {},
                icon: Image.asset(AppImages.nightModeIcon),
              )
            : const SizedBox(),
      ],
      title: Text(
        title,
        style: AppStyles.textStyleMedium20.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(30);
}
