import 'package:flutter/material.dart';

import '../../../../../core/utils/app_color.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_list_tile.dart';

class SupportSection extends StatelessWidget {
  const SupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Text("SUPPORT & LEGAL", style: AppStyles.textStyleBoldDark20),
        const SizedBox(height: 32),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightBackgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            children: [
              CustomListTile(
                title: "Help & Support",
                icon: AppImages.helpImage,
                onTap: () {},
              ),
              const Divider(thickness: 0.1),
              CustomListTile(
                title: "Privacy",
                icon: AppImages.privacyImage,
                onTap: () {},
              ),
              const Divider(thickness: 0.1),
              CustomListTile(
                title: "About the App",
                icon: AppImages.aboutImage,
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
